.class public interface abstract Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection;
.super Ljava/lang/Object;
.source "IPluginConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;
    }
.end annotation


# virtual methods
.method public abstract getPermission()Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;
.end method

.method public abstract getRetryCount()I
.end method

.method public abstract isNoFriends()Z
.end method

.method public abstract isPermissionRequired()Z
.end method

.method public abstract isRetry()Z
.end method

.method public abstract isRetryEnabled()Z
.end method

.method public abstract isSignInRequired()Z
.end method

.method public abstract isSignedIn()Z
.end method

.method public abstract setPermissionState(Lcom/htc/opensense2/album/SocialNetworkManager/IPluginConnection$PERMISSION;)V
.end method

.method public abstract setRetryCount(I)V
.end method

.method public abstract setSignInState(Z)V
.end method
