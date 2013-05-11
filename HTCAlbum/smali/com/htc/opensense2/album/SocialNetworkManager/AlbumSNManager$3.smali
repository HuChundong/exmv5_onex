.class Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;
.super Ljava/lang/Object;
.source "AlbumSNManager.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/IAuthenticationResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1236
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationFail(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x66

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationType:I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1602(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;I)I

    .line 1240
    packed-switch p1, :pswitch_data_0

    .line 1251
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][IAuthenticationResult] : Authentication Failure : unknown error code."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :goto_0
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x4ea8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1255
    return-void

    .line 1242
    :pswitch_0
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][IAuthenticationResult] : Authentication Failure : AUTH_PASSWORD_INVALID."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :pswitch_1
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][IAuthenticationResult] : Authentication Failure : AUTH_PERMISSION_INVALID."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1248
    :pswitch_2
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][IAuthenticationResult] : Authentication Failure : AUTH_TOKEN_INVALID."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAuthenticationSuccess()V
    .locals 4

    .prologue
    .line 1258
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][IAuthenticationResult] : Authentication success."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x65

    #setter for: Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->mAuthenticationType:I
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->access$1602(Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;I)I

    .line 1260
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$3;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    const/16 v1, 0x4ea8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 1261
    return-void
.end method
