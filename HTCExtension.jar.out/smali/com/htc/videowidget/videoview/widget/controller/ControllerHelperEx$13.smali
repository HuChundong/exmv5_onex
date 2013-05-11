.class Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;
.super Ljava/lang/Object;
.source "ControllerHelperEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerType(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iput p2, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 555
    const-string v0, "ControllerHelper"

    const-string v1, "post delayed: setControllerType()"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;->this$0:Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;

    iget v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx$13;->val$type:I

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/controller/ControllerHelperEx;->setControllerType(I)V

    .line 557
    return-void
.end method
