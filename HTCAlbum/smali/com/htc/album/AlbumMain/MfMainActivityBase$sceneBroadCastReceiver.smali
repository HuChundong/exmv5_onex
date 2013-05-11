.class Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MfMainActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/MfMainActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sceneBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/MfMainActivityBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 472
    iput-object p1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;->this$0:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;Lcom/htc/album/AlbumMain/MfMainActivityBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;-><init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase$sceneBroadCastReceiver;->this$0:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 479
    return-void
.end method
