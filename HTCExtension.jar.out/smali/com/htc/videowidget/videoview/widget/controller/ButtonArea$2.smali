.class Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$2;
.super Ljava/lang/Object;
.source "ButtonArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$2;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$2;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$2;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;

    iget-object v0, v0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    const/16 v1, 0xbba

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;->onEvent(ILandroid/os/Bundle;)V

    .line 53
    :cond_0
    return-void
.end method
