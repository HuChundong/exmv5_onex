.class public Lcom/htc/videowidget/videoview/widget/CenterButton;
.super Lcom/htc/widget/HtcRimButton;
.source "CenterButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioIcon"


# instance fields
.field private mCaptureViewButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CenterButton;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CenterButton;->init(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcRimButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/CenterButton;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/htc/videowidget/videoview/widget/CenterButton;
    .locals 4
    .parameter "contex"
    .parameter "root"

    .prologue
    const/4 v2, -0x2

    .line 35
    new-instance v0, Lcom/htc/videowidget/videoview/widget/CenterButton;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/CenterButton;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, button:Lcom/htc/videowidget/videoview/widget/CenterButton;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 49
    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/CenterButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/CenterButton;->mContext:Landroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/CenterButton;->setBackgroundColor(I)V

    .line 82
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/CenterButton;->setVisibility(I)V

    .line 92
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/CenterButton;->setVisibility(I)V

    .line 87
    return-void
.end method
