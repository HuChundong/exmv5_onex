.class public final Lcom/android/camera/widget/PopupBubble;
.super Ljava/lang/Object;
.source "PopupBubble.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/PopupBubble$ExpandDirection;,
        Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;,
        Lcom/android/camera/widget/PopupBubble$OnOpenListener;,
        Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    }
.end annotation


# instance fields
.field private m_Anchor:Landroid/view/View;

.field private final m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

.field private final m_Context:Landroid/content/Context;

.field private m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

.field private m_Height:I

.field private m_IsReopeningWindow:Z

.field private m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

.field private m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

.field private m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

.field private m_Tag:Ljava/lang/Object;

.field private m_Width:I

.field private m_Window:Lcom/htc/widget/PopupBubbleWindow;

.field private m_XOffset:I

.field private m_YOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

    sget-object v0, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->Default:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iput v2, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    iput v2, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    new-instance v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/widget/PopupBubble;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/widget/PopupBubble;Lcom/htc/widget/PopupBubbleWindow;)Lcom/htc/widget/PopupBubbleWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/widget/PopupBubble;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnClosedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/widget/PopupBubble;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/widget/PopupBubble;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/PopupBubble;->m_XOffset:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/widget/PopupBubble;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/widget/PopupBubble;->m_YOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/widget/PopupBubble;)Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    return-object v0
.end method

.method private convertToWindowLayoutSize(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    :pswitch_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reopenWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    return-void
.end method

.method private updateWindowSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->reopenWindow()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    invoke-direct {p0, v1}, Lcom/android/camera/widget/PopupBubble;->convertToWindowLayoutSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    invoke-direct {p0, v2}, Lcom/android/camera/widget/PopupBubble;->convertToWindowLayoutSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/PopupBubbleWindow;->setWindowLayoutMode(II)V

    iget v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setWidth(I)V

    :cond_3
    iget v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setHeight(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->dismiss()V

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Tag:Ljava/lang/Object;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/widget/PopupBubble;->open(Landroid/view/View;II)V

    return-void
.end method

.method public open(Landroid/view/View;II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iget v1, v1, Lcom/android/camera/widget/PopupBubble$ExpandDirection;->value:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setExpandDirection(I)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, v2}, Lcom/htc/widget/PopupBubbleWindow;->setClipToScreenEnabled(Z)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupBubble$1;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupBubble$1;-><init>(Lcom/android/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    new-instance v1, Lcom/android/camera/widget/PopupBubble$2;

    invoke-direct {v1, p0}, Lcom/android/camera/widget/PopupBubble$2;-><init>(Lcom/android/camera/widget/PopupBubble;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->updateWindowSize()V

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Anchor:Landroid/view/View;

    iput p2, p0, Lcom/android/camera/widget/PopupBubble;->m_XOffset:I

    iput p3, p0, Lcom/android/camera/widget/PopupBubble;->m_YOffset:I

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/PopupBubbleWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    invoke-interface {v0, p0}, Lcom/android/camera/widget/PopupBubble$OnOpenListener;->onOpen(Lcom/android/camera/widget/PopupBubble;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/PopupBubble;->m_IsReopeningWindow:Z

    goto :goto_0
.end method

.method public setContentRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentRotation:Lcom/android/camera/rotate/UIRotation;

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->reopenWindow()V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/widget/PopupBubble;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v2, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->removeAllViews()V

    if-eqz p1, :cond_2

    instance-of v2, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v2, :cond_1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p2, :cond_3

    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    :goto_0
    move-object p2, v1

    :cond_1
    iget-object v2, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public final setExpandDirection(Lcom/android/camera/widget/PopupBubble$ExpandDirection;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_ExpandDirection:Lcom/android/camera/widget/PopupBubble$ExpandDirection;

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v0}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->reopenWindow()V

    :cond_0
    return-void
.end method

.method public setOnClosedListener(Lcom/android/camera/widget/PopupBubble$OnClosedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_OnClosedListener:Lcom/android/camera/widget/PopupBubble$OnClosedListener;

    return-void
.end method

.method public setOnOpenListener(Lcom/android/camera/widget/PopupBubble$OnOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOpenListener:Lcom/android/camera/widget/PopupBubble$OnOpenListener;

    return-void
.end method

.method public setOnOutsideTouchListener(Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_OnOutsideTouchListener:Lcom/android/camera/widget/PopupBubble$OnOutsideTouchListener;

    return-void
.end method

.method public setSize(II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    iput p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Width:I

    iput p2, p0, Lcom/android/camera/widget/PopupBubble;->m_Height:I

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-ne p1, v2, :cond_1

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v2, :cond_2

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_Window:Lcom/htc/widget/PopupBubbleWindow;

    invoke-virtual {v1}, Lcom/htc/widget/PopupBubbleWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/PopupBubble;->m_ContentContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->requestLayout()V

    invoke-direct {p0}, Lcom/android/camera/widget/PopupBubble;->updateWindowSize()V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PopupBubble;->m_Tag:Ljava/lang/Object;

    return-void
.end method
