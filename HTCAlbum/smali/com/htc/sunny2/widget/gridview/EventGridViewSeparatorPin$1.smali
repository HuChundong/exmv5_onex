.class Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;
.super Lcom/htc/sunnyCore/RenderThreadAction;
.source "EventGridViewSeparatorPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setSeparatorPinTextToNextProcess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

.field final synthetic val$fTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iput-object p4, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;->val$fTitle:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 412
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;->this$0:Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin$1;->val$fTitle:Ljava/lang/String;

    #calls: Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->setText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;->access$000(Lcom/htc/sunny2/widget/gridview/EventGridViewSeparatorPin;Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x0

    return v0
.end method
