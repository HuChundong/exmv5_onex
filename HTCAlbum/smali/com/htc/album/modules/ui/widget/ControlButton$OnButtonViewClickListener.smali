.class Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;
.super Ljava/lang/Object;
.source "ControlButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/widget/ControlButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnButtonViewClickListener"
.end annotation


# instance fields
.field private mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/modules/ui/widget/ControlButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, object:Ljava/lang/Object;
    instance-of v3, v2, Lcom/htc/album/modules/ui/widget/ControlButton;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 189
    check-cast v0, Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 194
    .local v0, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->hasBubble()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->isBubbleShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->dismissBubbleWithoutAnimation()V

    .line 218
    .end local v0           #button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0       #button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    :cond_1
    iget-object v1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 204
    .local v1, listener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;
    if-eqz v1, :cond_2

    .line 206
    invoke-interface {v1, v0}, Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;->onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V

    .line 212
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->hasBubble()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->isBubbleShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/htc/album/modules/ui/widget/ControlButton;->showBubble()Z

    goto :goto_0
.end method

.method public setControlButtonListener(Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/htc/album/modules/ui/widget/ControlButton$OnButtonViewClickListener;->mListener:Lcom/htc/album/modules/ui/widget/ControlButton$OnControlButtonClickListener;

    .line 175
    return-void
.end method
