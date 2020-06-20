package malinowski.michal.questionnaire.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

import javax.sql.DataSource;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private final DataSource dataSource;

    public SecurityConfig(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .inMemoryAuthentication()
                .withUser("respondent").password("{noop}pass").roles("RESPONDENT")
                .and()
                .withUser("admin").password("{noop}pass").roles("ADMIN")
                .and()
                .withUser("editor").password("{noop}pass").roles("EDITOR")
                .and()
                .and()
                .jdbcAuthentication()
                .dataSource(dataSource)
                .usersByUsernameQuery("SELECT username, password, active FROM (" +
                        "SELECT username, password, active FROM respondents" +
                        " UNION " +
                        "SELECT email As username, password, active FROM workers) As login WHERE username = ?")
                .authoritiesByUsernameQuery("SELECT username, role FROM (" +
                        "SELECT username, 'ROLE_RESPONDENT' As role FROM respondents" +
                        " UNION " +
                        "SELECT email As username, role FROM workers) As login_roles WHERE username = ?");
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        super.configure(web);
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/register").permitAll()
                .antMatchers("/login").permitAll()
                .antMatchers("/").permitAll()
                .anyRequest().authenticated()
                .and()
                .formLogin();
        http.logout().logoutSuccessUrl("/");
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
}
