.class Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;
.super Ljava/lang/Object;
.source "ButtonArea.java"


# static fields
.field public static final BTN_ID_FF:I = 0x28f

.field public static final BTN_ID_FW:I = 0x290

.field public static final BTN_ID_PLAY:I = 0x28e

.field public static final TYPE_FULL:I = 0x209

.field public static final TYPE_SIMPLE:I = 0x20a


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBtnFF:Lcom/htc/widget/HtcRimImageButton;

.field private mBtnFW:Lcom/htc/widget/HtcRimImageButton;

.field private mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

.field private mContext:Landroid/content/Context;

.field protected mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

.field private mOnFFBtnClickListener:Landroid/view/View$OnClickListener;

.field private mOnPlayBtnClickListener:Landroid/view/View$OnClickListener;

.field private mOnRRBtnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "ButtonArea"

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->TAG:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    .line 33
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    .line 34
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    .line 35
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    .line 36
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    .line 38
    iput-object v2, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 40
    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$1;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$1;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mOnPlayBtnClickListener:Landroid/view/View$OnClickListener;

    .line 48
    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$2;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$2;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mOnFFBtnClickListener:Landroid/view/View$OnClickListener;

    .line 56
    new-instance v1, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$3;

    invoke-direct {v1, p0}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$3;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mOnRRBtnClickListener:Landroid/view/View$OnClickListener;

    .line 66
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 68
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v1, 0x603

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    .line 69
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    const v2, 0x60b0001

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    .line 70
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    const v2, 0x60b0002

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    .line 71
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    const/high16 v2, 0x60b

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimImageButton;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    .line 72
    return-void
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    return-object v0
.end method

.method public initView()V
    .locals 9

    .prologue
    .line 81
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x20800b6

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 84
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    const-string v5, "common_b_transport_outer"

    const v6, 0x2080014

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    const-string v6, "common_b_transport_pressed"

    const v7, 0x2080015

    invoke-static {v5, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    const-string v7, "common_b_transport_rest"

    const v8, 0x2080016

    invoke-static {v6, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 88
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mOnPlayBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    const-string v4, "common_b_transport_middle_outer"

    const v5, 0x2080011

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 92
    .local v0, outer:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    const-string v4, "common_b_transport_middle_pressed"

    const v5, 0x2080012

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 93
    .local v1, pressed:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mContext:Landroid/content/Context;

    const-string v4, "common_b_transport_middle_rest"

    const v5, 0x2080013

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 94
    .local v2, rest:I
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x20800b4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 97
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 98
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mOnFFBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x20800c0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 103
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 104
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mOnRRBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mRootView:Lcom/htc/videowidget/videoview/widget/ButtonContainer;

    new-instance v4, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$4;

    invoke-direct {v4, p0}, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea$4;-><init>(Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;)V

    invoke-virtual {v3, v4}, Lcom/htc/videowidget/videoview/widget/ButtonContainer;->setListener(Lcom/htc/videowidget/videoview/widget/ButtonContainer$IButtonContainerListener;)V

    .line 117
    :cond_3
    return-void
.end method

.method public isGrayOut(I)Z
    .locals 1
    .parameter "btnID"

    .prologue
    .line 154
    const/16 v0, 0x28e

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->isEnabled()Z

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 156
    :cond_0
    const/16 v0, 0x28f

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 158
    :cond_1
    const/16 v0, 0x290

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimImageButton;->isEnabled()Z

    move-result v0

    goto :goto_0

    .line 160
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBtnMarginRight(II)V
    .locals 3
    .parameter "btnID"
    .parameter "margin"

    .prologue
    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, temp:Lcom/htc/widget/HtcRimImageButton;
    const/16 v2, 0x28e

    if-ne p1, v2, :cond_2

    .line 187
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    .line 192
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {v1}, Lcom/htc/widget/HtcRimImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 195
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 196
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcRimImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .end local v0           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    return-void

    .line 188
    :cond_2
    const/16 v2, 0x28f

    if-ne p1, v2, :cond_3

    .line 189
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    goto :goto_0

    .line 190
    :cond_3
    const/16 v2, 0x290

    if-ne p1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    goto :goto_0
.end method

.method public setGrayOut(IZ)V
    .locals 1
    .parameter "btnID"
    .parameter "isGrayout"

    .prologue
    .line 144
    const/16 v0, 0x28e

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const/16 v0, 0x28f

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_2
    const/16 v0, 0x290

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setIcon(II)V
    .locals 1
    .parameter "btnID"
    .parameter "resID"

    .prologue
    .line 175
    const/16 v0, 0x28e

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const/16 v0, 0x28f

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0

    .line 179
    :cond_2
    const/16 v0, 0x290

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mListener:Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;

    .line 122
    return-void
.end method

.method public setVisibility(II)V
    .locals 1
    .parameter "btnID"
    .parameter "visibility"

    .prologue
    .line 165
    const/16 v0, 0x28e

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnPlay:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/16 v0, 0x28f

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    goto :goto_0

    .line 169
    :cond_2
    const/16 v0, 0x290

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public switchType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 126
    const/16 v0, 0x209

    if-ne p1, v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    const/16 v0, 0x20a

    if-ne p1, v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFF:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/controller/ButtonArea;->mBtnFW:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    goto :goto_0
.end method
