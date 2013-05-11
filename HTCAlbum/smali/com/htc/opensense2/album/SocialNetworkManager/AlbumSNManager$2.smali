.class Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$2;
.super Ljava/lang/Object;
.source "AlbumSNManager.java"

# interfaces
.implements Lcom/htc/opensense/album/plugin/ISignInResult;


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
    .line 467
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager$2;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignInFail(I)V
    .locals 2
    .parameter "nErrorId"

    .prologue
    .line 470
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    return-void

    .line 473
    :pswitch_0
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][ISignInResult]: Account no exist."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :pswitch_1
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][ISignInResult]: Account and password mismatch."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSignInSuccess()V
    .locals 2

    .prologue
    .line 482
    const-string v0, "AlbumSNManager"

    const-string v1, "[HTCAlbum][AlbumSNManager][ISignInResult]: Sign in Success."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    return-void
.end method
