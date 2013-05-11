.class Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;
.super Landroid/view/View;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$600(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$600(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunnyCore/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunnyCore/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 700
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$600(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunnyCore/view/SView;->createContextMenu(Landroid/view/ContextMenu;)V

    .line 701
    iget-object v0, p0, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunnyCore/view/SView;
    invoke-static {v0}, Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;->access$600(Lcom/htc/sunnyCore/view/SSurfaceView$SViewRoot;)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunnyCore/view/SView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 703
    :cond_0
    return-void
.end method
