.class Lcom/htc/album/AlbumMain/MfMainActivityBase$1;
.super Landroid/os/Handler;
.source "MfMainActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumMain/MfMainActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumMain/MfMainActivityBase;


# direct methods
.method constructor <init>(Lcom/htc/album/AlbumMain/MfMainActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;->this$0:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/album/AlbumMain/MfMainActivityBase$1;->this$0:Lcom/htc/album/AlbumMain/MfMainActivityBase;

    invoke-virtual {v0, p1}, Lcom/htc/album/AlbumMain/MfMainActivityBase;->onMessage(Landroid/os/Message;)Z

    .line 423
    return-void
.end method
