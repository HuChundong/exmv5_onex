.class Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$1;
.super Landroid/os/Handler;
.source "ActivityMainOnlineListBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase$1;->this$0:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainOnlineListBase;->onMessageHandler(Landroid/os/Message;)V

    .line 214
    return-void
.end method
