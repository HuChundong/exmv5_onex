.class Lcom/htc/album/modules/ui/ControlBarManager$4;
.super Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
.source "ControlBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/ControlBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/modules/ui/ControlBarManager;


# direct methods
.method constructor <init>(Lcom/htc/album/modules/ui/ControlBarManager;)V
    .locals 1
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$4;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;-><init>(Lcom/htc/album/modules/ui/ControlBarManager$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarManager$4;->this$0:Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->footerAnimation:Landroid/view/animation/Animation;

    #calls: Lcom/htc/album/modules/ui/ControlBarManager;->doHideHeaderControlBar(Landroid/view/animation/Animation;)V
    invoke-static {v0, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->access$400(Lcom/htc/album/modules/ui/ControlBarManager;Landroid/view/animation/Animation;)V

    .line 113
    return-void
.end method
