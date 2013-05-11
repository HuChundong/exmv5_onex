.class public Lcom/htc/dialog/HtcAlertController;
.super Ljava/lang/Object;
.source "HtcAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dialog/HtcAlertController$AlertParams;,
        Lcom/htc/dialog/HtcAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAutoLinkMask:I

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeDisabled:Z

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralDisabled:Z

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveDisabled:Z

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsAutoMotive:Z

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mPadding1:Landroid/view/View;

.field private mPadding2:Landroid/view/View;

.field private mPadding3:Landroid/view/View;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCenter:Z

.field private mTitleDivider:Z

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 120
    iput v2, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    .line 133
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    .line 138
    iput v2, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    .line 149
    iput-boolean v3, p0, Lcom/htc/dialog/HtcAlertController;->mTitleDivider:Z

    .line 150
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    .line 154
    iput v0, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    .line 156
    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    .line 160
    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 161
    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mPadding2:Landroid/view/View;

    .line 162
    iput-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 164
    new-instance v0, Lcom/htc/dialog/HtcAlertController$1;

    invoke-direct {v0, p0}, Lcom/htc/dialog/HtcAlertController$1;-><init>(Lcom/htc/dialog/HtcAlertController;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 223
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    .line 224
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 225
    iput-object p3, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    .line 226
    new-instance v0, Lcom/htc/dialog/HtcAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/htc/dialog/HtcAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/dialog/HtcAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1102(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/dialog/HtcAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/dialog/HtcAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/dialog/HtcAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/dialog/HtcAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    :goto_0
    return v2

    .line 235
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 236
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 239
    check-cast v1, Landroid/view/ViewGroup;

    .line 240
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 241
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 242
    add-int/lit8 v0, v0, -0x1

    .line 243
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 244
    invoke-static {p0}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 249
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 8
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    .line 840
    const/4 v4, 0x0

    .line 894
    .local v4, weight:F
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/high16 v6, 0x202

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 895
    .local v0, leftSpacer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 896
    .local v1, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 897
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 898
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 901
    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x2020001

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 902
    .local v3, rightSpacer:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 903
    .local v2, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 904
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 905
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 907
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 21
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "a"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_full_dark"

    const v20, 0x208023a

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    .line 915
    .local v8, fullDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_top_dark"

    const v20, 0x208023d

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    .line 916
    .local v15, topDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_center_dark"

    const v20, 0x2080237

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 917
    .local v6, centerDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_bottom_dark"

    const v20, 0x2080231

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 918
    .local v3, bottomDark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_full_bright"

    const v20, 0x2080239

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    .line 919
    .local v7, fullBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_top_bright"

    const v20, 0x208023c

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    .line 920
    .local v14, topBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_center_bright"

    const v20, 0x2080236

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 921
    .local v5, centerBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_bottom_bright"

    const v20, 0x208022f

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 922
    .local v2, bottomBright:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "popup_bottom_medium"

    const v20, 0x2080233

    invoke-static/range {v18 .. v20}, Landroid/widget/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 934
    .local v4, bottomMedium:I
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v17, v0

    .line 935
    .local v17, views:[Landroid/view/View;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v11, v0, [Z

    .line 936
    .local v11, light:[Z
    const/4 v10, 0x0

    .line 937
    .local v10, lastView:Landroid/view/View;
    const/4 v9, 0x0

    .line 939
    .local v9, lastLight:Z
    const/4 v12, 0x0

    .line 940
    .local v12, pos:I
    if-eqz p6, :cond_0

    .line 941
    aput-object p1, v17, v12

    .line 942
    const/16 v18, 0x0

    aput-boolean v18, v11, v12

    .line 943
    add-int/lit8 v12, v12, 0x1

    .line 951
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v17, v12

    .line 955
    const/16 v18, 0x1

    aput-boolean v18, v11, v12

    .line 957
    add-int/lit8 v12, v12, 0x1

    .line 958
    if-eqz p3, :cond_2

    .line 959
    aput-object p3, v17, v12

    .line 960
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    move/from16 v18, v0

    aput-boolean v18, v11, v12

    .line 961
    add-int/lit8 v12, v12, 0x1

    .line 963
    :cond_2
    if-nez p4, :cond_3

    if-eqz p6, :cond_4

    .line 964
    :cond_3
    aput-object p7, v17, v12

    .line 965
    const/16 v18, 0x0

    aput-boolean v18, v11, v12

    .line 968
    :cond_4
    const/4 v13, 0x0

    .line 969
    .local v13, setView:Z
    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_a

    .line 970
    aget-object v16, v17, v12

    .line 971
    .local v16, v:Landroid/view/View;
    if-nez v16, :cond_5

    .line 969
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 974
    :cond_5
    if-eqz v10, :cond_6

    .line 975
    if-nez v13, :cond_8

    .line 976
    if-eqz v9, :cond_7

    move/from16 v18, v14

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 980
    :goto_3
    const/4 v13, 0x1

    .line 982
    :cond_6
    move-object/from16 v10, v16

    .line 983
    aget-boolean v9, v11, v12

    goto :goto_1

    :cond_7
    move/from16 v18, v15

    .line 976
    goto :goto_2

    .line 978
    :cond_8
    if-eqz v9, :cond_9

    move/from16 v18, v5

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_9
    move/from16 v18, v6

    goto :goto_4

    .line 986
    .end local v16           #v:Landroid/view/View;
    :cond_a
    if-eqz v10, :cond_c

    .line 987
    if-eqz v13, :cond_10

    .line 992
    if-eqz v9, :cond_f

    if-eqz p4, :cond_e

    .end local v4           #bottomMedium:I
    :cond_b
    :goto_5
    invoke-virtual {v10, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 995
    invoke-virtual {v10}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/dialog/HtcAlertController;->setupButtonsHeight(Landroid/graphics/drawable/Drawable;)V

    .line 1026
    .end local v7           #fullBright:I
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/dialog/HtcAlertController;->mCheckedItem:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelection(I)V

    .line 1033
    :cond_d
    return-void

    .restart local v4       #bottomMedium:I
    .restart local v7       #fullBright:I
    :cond_e
    move v4, v2

    .line 992
    goto :goto_5

    :cond_f
    if-nez p4, :cond_b

    move v4, v3

    goto :goto_5

    .line 997
    :cond_10
    if-eqz v9, :cond_11

    .end local v7           #fullBright:I
    :goto_7
    invoke-virtual {v10, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .restart local v7       #fullBright:I
    :cond_11
    move v7, v8

    goto :goto_7
.end method

.method private setupButtonTextLayout()V
    .locals 17

    .prologue
    .line 1036
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 1037
    .local v11, language:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, chinese:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 1039
    .local v9, japanese:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 1040
    .local v10, korean:Ljava/lang/String;
    const-string v14, "vi"

    .line 1041
    .local v14, vietnamese:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    :cond_0
    const/4 v8, 0x1

    .line 1044
    .local v8, isCJKV:Z
    :goto_0
    const/4 v15, 0x3

    new-array v3, v15, [Landroid/widget/Button;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v16, v0

    aput-object v16, v3, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v16, v0

    aput-object v16, v3, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v16, v0

    aput-object v16, v3, v15

    .line 1045
    .local v3, buttons:[Landroid/widget/Button;
    move-object v1, v3

    .local v1, arr$:[Landroid/widget/Button;
    array-length v12, v1

    .local v12, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v12, :cond_8

    aget-object v2, v1, v7

    .line 1046
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 1047
    .local v13, text:Ljava/lang/CharSequence;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 1045
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1041
    .end local v1           #arr$:[Landroid/widget/Button;
    .end local v2           #button:Landroid/widget/Button;
    .end local v3           #buttons:[Landroid/widget/Button;
    .end local v7           #i$:I
    .end local v8           #isCJKV:Z
    .end local v12           #len$:I
    .end local v13           #text:Ljava/lang/CharSequence;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 1051
    .restart local v1       #arr$:[Landroid/widget/Button;
    .restart local v2       #button:Landroid/widget/Button;
    .restart local v3       #buttons:[Landroid/widget/Button;
    .restart local v7       #i$:I
    .restart local v8       #isCJKV:Z
    .restart local v12       #len$:I
    .restart local v13       #text:Ljava/lang/CharSequence;
    :cond_3
    const/4 v5, 0x0

    .line 1052
    .local v5, containsSpace:Z
    if-nez v8, :cond_4

    .line 1053
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 1054
    invoke-interface {v13, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1055
    const/4 v5, 0x1

    .line 1061
    .end local v6           #i:I
    :cond_4
    if-nez v8, :cond_5

    if-eqz v5, :cond_7

    .line 1063
    :cond_5
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1064
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1065
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    .line 1053
    .restart local v6       #i:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1068
    .end local v6           #i:I
    :cond_7
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 1069
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1070
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1071
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_2

    .line 1074
    .end local v2           #button:Landroid/widget/Button;
    .end local v5           #containsSpace:Z
    .end local v13           #text:Ljava/lang/CharSequence;
    :cond_8
    return-void
.end method

.method private setupButtons()Z
    .locals 17

    .prologue
    .line 706
    const/4 v3, 0x1

    .line 707
    .local v3, BIT_BUTTON_POSITIVE:I
    const/4 v1, 0x2

    .line 708
    .local v1, BIT_BUTTON_NEGATIVE:I
    const/4 v2, 0x4

    .line 709
    .local v2, BIT_BUTTON_NEUTRAL:I
    const/4 v13, 0x0

    .line 710
    .local v13, whichButtons:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x202005d

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 714
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 716
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x202005a

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 717
    .local v8, padding1:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/view/View;->setVisibility(I)V

    .line 724
    .end local v8           #padding1:Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    if-eqz v14, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 729
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x2020059

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 730
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 735
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x2020002

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 736
    .local v9, padding2:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/view/View;->setVisibility(I)V

    .line 745
    .end local v9           #padding2:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    if-eqz v14, :cond_1

    .line 746
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 750
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x202005b

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 754
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x202005c

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 757
    .local v10, padding3:Landroid/view/View;
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 764
    .end local v10           #padding3:Landroid/view/View;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    if-eqz v14, :cond_2

    .line 765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 772
    :cond_2
    if-ne v13, v3, :cond_a

    .line 773
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    .line 780
    :cond_3
    :goto_3
    const/4 v6, 0x0

    .line 782
    .local v6, context:Landroid/content/Context;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const-string v15, "com.htc"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 789
    :goto_4
    if-eqz v6, :cond_6

    .line 790
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 792
    .local v12, r:Landroid/content/res/Resources;
    const-string v14, "title_primary"

    const v15, 0x206009a

    invoke-static {v6, v14, v15}, Landroid/widget/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 794
    .local v5, button_skin:Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v14, :cond_4

    .line 796
    const v4, 0x203007c

    .line 797
    .local v4, button_font_style:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v6, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v6, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 799
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v6, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 803
    .end local v4           #button_font_style:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x202005a

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    .line 804
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x2020002

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding2:Landroid/view/View;

    .line 805
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x202005c

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    .line 806
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v15, 0x2020058

    invoke-virtual {v14, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 807
    .local v11, padding4:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const v15, 0x2080036

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 809
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding2:Landroid/view/View;

    const v15, 0x2080036

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 810
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding2:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 811
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const v15, 0x2080036

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 812
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 813
    if-eqz v11, :cond_5

    .line 814
    const v14, 0x2080036

    invoke-virtual {v11, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 815
    const/16 v14, 0x8

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v14, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v14, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v14, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 821
    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    .line 822
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 834
    .end local v5           #button_skin:Landroid/content/res/ColorStateList;
    .end local v11           #padding4:Landroid/view/View;
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/dialog/HtcAlertController;->setupButtonTextLayout()V

    .line 835
    if-eqz v13, :cond_f

    const/4 v14, 0x1

    :goto_6
    return v14

    .line 719
    .end local v6           #context:Landroid/content/Context;
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 721
    or-int/2addr v13, v3

    goto/16 :goto_0

    .line 739
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 740
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    or-int/2addr v13, v1

    goto/16 :goto_1

    .line 759
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 762
    or-int/2addr v13, v2

    goto/16 :goto_2

    .line 774
    :cond_a
    if-ne v13, v1, :cond_b

    .line 775
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 776
    :cond_b
    if-ne v13, v2, :cond_3

    .line 777
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/htc/dialog/HtcAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 783
    .restart local v6       #context:Landroid/content/Context;
    :catch_0
    move-exception v7

    .line 784
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 823
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #button_skin:Landroid/content/res/ColorStateList;
    .restart local v11       #padding4:Landroid/view/View;
    .restart local v12       #r:Landroid/content/res/Resources;
    :cond_c
    const/4 v14, 0x5

    if-ne v13, v14, :cond_d

    .line 824
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 825
    :cond_d
    const/4 v14, 0x6

    if-ne v13, v14, :cond_e

    .line 826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 827
    :cond_e
    const/4 v14, 0x7

    if-ne v13, v14, :cond_6

    .line 828
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 829
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 835
    .end local v5           #button_skin:Landroid/content/res/ColorStateList;
    .end local v11           #padding4:Landroid/view/View;
    .end local v12           #r:Landroid/content/res/Resources;
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_6
.end method

.method private setupButtonsHeight(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "background"

    .prologue
    const/4 v5, 0x0

    .line 1077
    instance-of v3, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v3, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1082
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1083
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 1085
    .local v0, height:I
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 1086
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1087
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1088
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1091
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 1092
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1093
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1094
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1097
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 1098
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1099
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1100
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1101
    iget-object v3, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter "contentPanel"

    .prologue
    const v6, 0x2020053

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 668
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 669
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 672
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x2020054

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    .line 673
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 703
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const v2, 0x2030087

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 686
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 694
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 695
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 696
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 700
    :cond_4
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .parameter "topPanel"

    .prologue
    const v10, 0x202004e

    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 594
    const/4 v1, 0x1

    .line 596
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 598
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 601
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 604
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 605
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 664
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 607
    :cond_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, 0x1

    .line 609
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x202004f

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    .line 610
    if-eqz v0, :cond_8

    .line 613
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x2020050

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    .line 614
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 616
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/internal/widget/DialogTitle;

    if-eqz v4, :cond_2

    .line 617
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/internal/widget/DialogTitle;

    invoke-virtual {v4}, Lcom/android/internal/widget/DialogTitle;->setNotChangeTextSize()V

    .line 620
    :cond_2
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 621
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const v7, 0x203007c

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 625
    :cond_3
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-lez v4, :cond_6

    .line 632
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    .line 650
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 651
    .local v3, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .end local v0           #hasTextTitle:Z
    .end local v3           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_5
    move v0, v5

    .line 607
    goto :goto_1

    .line 634
    .restart local v0       #hasTextTitle:Z
    :cond_6
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    .line 635
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 637
    :cond_7
    iget v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    if-nez v4, :cond_4

    .line 642
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 646
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 658
    :cond_8
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 659
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 13

    .prologue
    .line 547
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020052

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 548
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/htc/dialog/HtcAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 549
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupButtons()Z

    move-result v4

    .line 551
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x202004d

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 558
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 591
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    sget-object v10, Lcom/htc/internal/R$styleable;->AlertDialog:[I

    const v11, 0x2010039

    const/4 v12, 0x0

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 563
    .local v5, a:Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/htc/dialog/HtcAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v6

    .line 564
    .local v6, hasTitle:Z
    if-nez v6, :cond_1

    .line 565
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020057

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 568
    .local v7, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_2

    if-nez v6, :cond_2

    .line 569
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :cond_2
    const/4 v3, 0x0

    .line 573
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020055

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 575
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020056

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 576
    .local v8, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    iget-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_3

    .line 578
    iget v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    iget v9, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    iget v10, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    iget v11, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 582
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .end local v8           #custom:Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    move-object v0, p0

    .line 589
    invoke-direct/range {v0 .. v7}, Lcom/htc/dialog/HtcAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 590
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v9, 0x2020055

    invoke-virtual {v0, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 496
    packed-switch p1, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    return-object v0

    .line 498
    :pswitch_0
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 500
    :pswitch_1
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 502
    :pswitch_2
    iget-object v1, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding1:Landroid/view/View;

    return-object v0
.end method

.method public getPadding2()Landroid/view/View;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding2:Landroid/view/View;

    return-object v0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mPadding3:Landroid/view/View;

    return-object v0
.end method

.method public installContent()V
    .locals 9

    .prologue
    const/high16 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 259
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 261
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    invoke-static {v4}, Lcom/htc/dialog/HtcAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    :cond_0
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 266
    :cond_1
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x209000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setContentView(I)V

    .line 267
    invoke-direct {p0}, Lcom/htc/dialog/HtcAlertController;->setupView()V

    .line 269
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x202004d

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 270
    .local v2, topPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_5

    .line 271
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 272
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget-boolean v4, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    if-eqz v4, :cond_3

    .line 273
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x202004c

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 274
    .local v1, parentPanel:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 275
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 277
    :cond_2
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x3f6147ae

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .line 278
    .local v3, width:I
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3, v6}, Landroid/view/Window;->setLayout(II)V

    .line 287
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    .end local v1           #parentPanel:Landroid/view/View;
    .end local v3           #width:I
    :goto_0
    return-void

    .line 279
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_3
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_4

    .line 280
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 282
    :cond_4
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 286
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_5
    iget-object v4, p0, Lcom/htc/dialog/HtcAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"
    .parameter "msg"

    .prologue
    .line 373
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 374
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 377
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :pswitch_0
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 381
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 397
    :goto_0
    return-void

    .line 385
    :pswitch_1
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 386
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 390
    :pswitch_2
    iput-object p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 391
    iput-object p4, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonDisabled(IZ)V
    .locals 2
    .parameter "whichButton"
    .parameter "disabled"

    .prologue
    .line 406
    packed-switch p1, :pswitch_data_0

    .line 421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_0
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonPositiveDisabled:Z

    .line 423
    :goto_0
    return-void

    .line 413
    :pswitch_1
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 417
    :pswitch_2
    iput-boolean p2, p0, Lcom/htc/dialog/HtcAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .parameter "customTitleView"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mCustomTitleView:Landroid/view/View;

    .line 306
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 452
    iput p1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    .line 453
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 454
    if-lez p1, :cond_1

    .line 455
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/htc/dialog/HtcAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    if-nez p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 468
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 469
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mForceInverseBackground:Z

    .line 481
    return-void
.end method

.method public setIsAutoMotive(Z)V
    .locals 0
    .parameter "isAutoMotive"

    .prologue
    .line 1115
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mIsAutoMotive:Z

    .line 1116
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 314
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 325
    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mAutoLinkMask:I

    .line 327
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 329
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 295
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/dialog/HtcAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleCenter:Z

    .line 442
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/htc/dialog/HtcAlertController;->mTitleDivider:Z

    .line 433
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 341
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/htc/dialog/HtcAlertController;->mView:Landroid/view/View;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingSpecified:Z

    .line 351
    iput p2, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingLeft:I

    .line 352
    iput p3, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingTop:I

    .line 353
    iput p4, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingRight:I

    .line 354
    iput p5, p0, Lcom/htc/dialog/HtcAlertController;->mViewSpacingBottom:I

    .line 355
    return-void
.end method
