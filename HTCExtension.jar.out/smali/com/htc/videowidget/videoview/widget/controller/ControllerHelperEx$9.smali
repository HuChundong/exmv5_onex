.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunctionEx(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$bToggleState:Z

.field final synthetic val$isEnable:Z

.field final synthetic val$nFunctionID:I


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->val$nFunctionID:I

    iput-boolean p3, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->val$isEnable:Z

    iput-boolean p4, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->val$bToggleState:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 435
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: invokeFunctionEx()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->val$nFunctionID:I

    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->val$isEnable:Z

    iget-boolean v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$9;->val$bToggleState:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->invokeFunctionEx(IZZ)V

    .line 437
    return-void
.end method
