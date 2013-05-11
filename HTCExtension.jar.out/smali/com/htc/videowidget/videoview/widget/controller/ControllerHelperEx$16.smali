.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setMoreMenuItemText(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$itemId:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 616
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;->val$itemId:I

    iput p3, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;->val$resId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 620
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: setMoreMenuItemString()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;->val$itemId:I

    iget v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$16;->val$resId:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setMoreMenuItemText(II)V

    .line 622
    return-void
.end method
