.class Lcom/htc/videowidget/videoview/widget/MoreButton$2;
.super Ljava/lang/Object;
.source "MoreButton.java"

# interfaces
.implements Lcom/htc/videowidget/videoview/widget/MoreDialogAdapter$IOnToggleChangeListener;


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
    .line 361
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$2;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggleChange(IZ)V
    .locals 2
    .parameter "pos"
    .parameter "toggleState"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreButton$2;->this$0:Lcom/htc/videowidget/videoview/widget/MoreButton;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/htc/videowidget/videoview/widget/MoreButton;->onSelecetListItem(IZZ)V

    .line 366
    return-void
.end method
