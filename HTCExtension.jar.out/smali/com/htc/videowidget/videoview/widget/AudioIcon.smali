.class public Lcom/htc/videowidget/videoview/widget/AudioIcon;
.super Landroid/widget/ImageView;
.source "AudioIcon.java"


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
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->init(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/htc/videowidget/videoview/widget/AudioIcon;
    .locals 4
    .parameter "contex"
    .parameter "root"

    .prologue
    const/4 v2, -0x2

    .line 36
    new-instance v0, Lcom/htc/videowidget/videoview/widget/AudioIcon;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/widget/AudioIcon;-><init>(Landroid/content/Context;)V

    .line 45
    .local v0, audioIcon:Lcom/htc/videowidget/videoview/widget/AudioIcon;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/AudioIcon;->mContext:Landroid/content/Context;

    .line 75
    iget-object v2, p0, Lcom/htc/videowidget/videoview/widget/AudioIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 78
    const-string v2, "AudioIcon"

    const-string v3, "[init] res is null"

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const v1, 0x6020015

    .line 82
    .local v1, resId:I
    invoke-virtual {p0, v1}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/videowidget/videoview/widget/AudioIcon;->setVisibility(I)V

    .line 88
    return-void
.end method
