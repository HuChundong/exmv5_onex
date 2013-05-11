.class Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivityTagView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/ActivityTagView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TemplateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/ActivityTagView;


# direct methods
.method private constructor <init>(Lcom/htc/album/addons/ActivityTagView;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/ActivityTagView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/addons/ActivityTagView;Lcom/htc/album/addons/ActivityTagView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;-><init>(Lcom/htc/album/addons/ActivityTagView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 190
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/ActivityTagView$TemplateBroadcastReceiver;->this$0:Lcom/htc/album/addons/ActivityTagView;

    #getter for: Lcom/htc/album/addons/ActivityTagView;->LOG_TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/addons/ActivityTagView;->access$100(Lcom/htc/album/addons/ActivityTagView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBroadcastReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method
