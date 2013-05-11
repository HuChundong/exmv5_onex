.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSpeedButtonIcon(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$isPlaying:Z

.field final synthetic val$speedMode:I


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;->val$speedMode:I

    iput-boolean p3, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;->val$isPlaying:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 413
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: updateSpeedButtonIcon()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;->val$speedMode:I

    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$8;->val$isPlaying:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->updateSpeedButtonIcon(IZ)V

    .line 415
    return-void
.end method
