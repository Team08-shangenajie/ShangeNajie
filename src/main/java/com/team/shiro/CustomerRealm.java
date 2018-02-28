package com.team.shiro;

import com.team.domain.User;
        import com.team.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
        import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.realm.AuthorizingRealm;
        import org.apache.shiro.subject.PrincipalCollection;

        import javax.annotation.Resource;
        import java.util.Set;

/**
 * Created by dllo on 18/2/7.
 */
public class CustomerRealm extends AuthorizingRealm {
//    提供数据库用户 角色 权限查询的业务对象
    @Resource
    private UserService userService;

//    授权 既给当前用户添加某些角色或者权限
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
//        获取认证通过的当前用户对象的用户名
        String userName= (String) principalCollection.getPrimaryPrincipal();
//        2根据用户名 查询角色列表
        Set<String> roles = userService.getRoles(userName);
//        3.根据用户名 查询权限列表
        Set<String> permissions = userService.getPermissions(userName);

//        4构建授权信息对象
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
//        5给授权器添加角色和权限
        info.setRoles(roles);
        info.setStringPermissions(permissions);

        return info;
    }


    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {

        UsernamePasswordToken token= (UsernamePasswordToken) authenticationToken;
        String userName = token.getUsername();
        User user= userService.selectByUserName(userName);
        if (user != null){
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(
                    user.getUsername(),user.getPassword(),getName());
            return info;
        }
        return null;

    }

}
