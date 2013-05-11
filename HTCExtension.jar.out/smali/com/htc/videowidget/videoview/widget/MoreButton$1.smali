.class Lcom/htc/videowidget/videoview/widget/MoreButton$1;
.super Ljava/lang/Object;
.source "MoreButton.java"

# interfaces
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/videowidget/videoview/widget/MoreButton;->popupBubbleInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;


# direct methods
.method constructor <init>(Lcom/htc/videowidget/videoview/widget/MoreButton;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    #getter for: Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;
    invoke-static {v0}, Lcom/htc/videowidget/videoview/widget/MoreButton;->access$000(Lcom/htc/videowidget/videoview/widget/MoreButton;)Lcom/htc/widget/ListPopupBubbleWindow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/widget/ListPopupBubbleWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    #setter for: Lcom/htc/videowidget/videoview/widget/MoreButton;->mPopupWindows:Lcom/htc/widget/ListPopupBubbleWindow;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->access$002(Lcom/htc/videowidget/videoview/widget/MoreButton;Lcom/htc/widget/ListPopupBubbleWindow;)Lcom/htc/widget/ListPopupBubbleWindow;

    .line 354
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$1;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    #setter for: Lcom/htc/videowidget/videoview/widget/MoreButton;->mAdapter:Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;
    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/widget/MoreButton;->access$102(Lcom/htc/videowidget/videoview/widget/MoreButton;Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;)Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter;

    .line 355
    return-void
.end method
