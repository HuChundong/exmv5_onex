.class Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$1;
.super Landroid/os/Handler;
.source "MfFragmentMainFriendBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/MfFragmentMainFriendBase;->onMessageHandler(Landroid/os/Message;)V

    .line 260
    return-void
.end method
