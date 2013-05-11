.class public Lcom/kddi/android/iida/widget/IidaAlertController;
.super Ljava/lang/Object;
.source "IidaAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/iida/widget/IidaAlertController$AlertParams;,
        Lcom/kddi/android/iida/widget/IidaAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private bottomBright:Landroid/graphics/drawable/Drawable;

.field private bottomDark:Landroid/graphics/drawable/Drawable;

.field private bottomMedium:Landroid/graphics/drawable/Drawable;

.field private centerBright:Landroid/graphics/drawable/Drawable;

.field private centerDark:Landroid/graphics/drawable/Drawable;

.field private colorId:I

.field private div:Landroid/graphics/drawable/Drawable;

.field private fullBright:Landroid/graphics/drawable/Drawable;

.field private fullDark:Landroid/graphics/drawable/Drawable;

.field private layoutId:I

.field private listViewLayoutId:I

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

.field private mDecorView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

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

.field private final res:Landroid/content/res/Resources;

.field private resContext:Landroid/content/Context;

.field private topBright:Landroid/graphics/drawable/Drawable;

.field private topDark:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 11
    .parameter "context"
    .parameter "di"
    .parameter "window"

    .prologue
    const/4 v4, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingSpecified:Z

    .line 110
    iput v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconId:I

    .line 123
    iput-boolean v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mForceInverseBackground:Z

    .line 128
    iput v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCheckedItem:I

    .line 139
    iput-boolean v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleDivider:Z

    .line 140
    iput-boolean v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleCenter:Z

    .line 143
    iput v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAutoLinkMask:I

    .line 146
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    .line 147
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding2:Landroid/view/View;

    .line 148
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    .line 151
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->fullDark:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topDark:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->centerDark:Landroid/graphics/drawable/Drawable;

    .line 154
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomDark:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->fullBright:Landroid/graphics/drawable/Drawable;

    .line 156
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topBright:Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->centerBright:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomBright:Landroid/graphics/drawable/Drawable;

    .line 159
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomMedium:Landroid/graphics/drawable/Drawable;

    .line 160
    iput v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->colorId:I

    .line 161
    iput v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->layoutId:I

    .line 162
    iput v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->listViewLayoutId:I

    .line 163
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->div:Landroid/graphics/drawable/Drawable;

    .line 165
    new-instance v4, Lcom/kddi/android/iida/widget/IidaAlertController$1;

    invoke-direct {v4, p0}, Lcom/kddi/android/iida/widget/IidaAlertController$1;-><init>(Lcom/kddi/android/iida/widget/IidaAlertController;)V

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 222
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    .line 223
    iput-object p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 224
    iput-object p3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    .line 225
    new-instance v4, Lcom/kddi/android/iida/widget/IidaAlertController$ButtonHandler;

    invoke-direct {v4, p2}, Lcom/kddi/android/iida/widget/IidaAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mHandler:Landroid/os/Handler;

    .line 228
    :try_start_0
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    const-string v5, "com.kddi.android.iida.resources"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->resContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const/16 v4, 0xe

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 252
    .local v2, queryAttr:[I
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->resContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->res:Landroid/content/res/Resources;

    .line 254
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->resContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 255
    .local v3, theme:Landroid/content/res/Resources$Theme;
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->res:Landroid/content/res/Resources;

    const-string v5, "ThemeIida"

    const-string v6, "style"

    const-string v7, "com.kddi.android.iida.resources"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v10}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 257
    const v4, 0x101005d

    invoke-virtual {v3, v8, v2, v4, v9}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 259
    .local v0, b:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->fullDark:Landroid/graphics/drawable/Drawable;

    .line 260
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topDark:Landroid/graphics/drawable/Drawable;

    .line 261
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->centerDark:Landroid/graphics/drawable/Drawable;

    .line 262
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomDark:Landroid/graphics/drawable/Drawable;

    .line 263
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->fullBright:Landroid/graphics/drawable/Drawable;

    .line 264
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topBright:Landroid/graphics/drawable/Drawable;

    .line 265
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->centerBright:Landroid/graphics/drawable/Drawable;

    .line 266
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomBright:Landroid/graphics/drawable/Drawable;

    .line 267
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomMedium:Landroid/graphics/drawable/Drawable;

    .line 268
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->layoutId:I

    .line 269
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->listViewLayoutId:I

    .line 270
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->div:Landroid/graphics/drawable/Drawable;

    .line 271
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->colorId:I

    .line 273
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 275
    return-void

    .line 229
    .end local v0           #b:Landroid/content/res/TypedArray;
    .end local v2           #queryAttr:[I
    .end local v3           #theme:Landroid/content/res/Resources$Theme;
    :catch_0
    move-exception v1

    .line 230
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "IidaAlertDialog"

    const-string v5, "Package not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 232
    iput-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->resContext:Landroid/content/Context;

    goto/16 :goto_0

    .line 235
    :array_0
    .array-data 0x4
        0xc6t 0x0t 0x1t 0x1t
        0xc7t 0x0t 0x1t 0x1t
        0xc8t 0x0t 0x1t 0x1t
        0xc9t 0x0t 0x1t 0x1t
        0xcat 0x0t 0x1t 0x1t
        0xcbt 0x0t 0x1t 0x1t
        0xcct 0x0t 0x1t 0x1t
        0xcdt 0x0t 0x1t 0x1t
        0xcet 0x0t 0x1t 0x1t
        0xcft 0x0t 0x1t 0x1t
        0xf2t 0x0t 0x1t 0x1t
        0xf7t 0x1t 0x1t 0x1t
        0x14t 0x2t 0x1t 0x1t
        0x61t 0x3t 0x1t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/kddi/android/iida/widget/IidaAlertController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1102(Lcom/kddi/android/iida/widget/IidaAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kddi/android/iida/widget/IidaAlertController;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/kddi/android/iida/widget/IidaAlertController;->createListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/kddi/android/iida/widget/IidaAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    :goto_0
    return v2

    .line 282
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 283
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 286
    check-cast v1, Landroid/view/ViewGroup;

    .line 287
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 288
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_3

    .line 289
    add-int/lit8 v0, v0, -0x1

    .line 290
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 291
    invoke-static {p0}, Lcom/kddi/android/iida/widget/IidaAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 296
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 8
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    .line 832
    const/4 v4, 0x0

    .line 835
    .local v4, weight:F
    iget-object v5, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v6, "leftSpacer"

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 836
    .local v0, leftSpacer:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 837
    .local v1, paramsL:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 838
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 842
    iget-object v5, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v6, "rightSpacer"

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 843
    .local v3, rightSpacer:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 844
    .local v2, paramsR:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 845
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 848
    return-void
.end method

.method private createListView()Landroid/widget/ListView;
    .locals 4

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1011
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->res:Landroid/content/res/Resources;

    iget v2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->listViewLayoutId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    return-object v1
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V
    .locals 11
    .parameter "topPanel"
    .parameter "contentPanel"
    .parameter "customPanel"
    .parameter "hasButtons"
    .parameter "hasTitle"
    .parameter "buttonPanel"

    .prologue
    .line 862
    const/4 v8, 0x4

    new-array v7, v8, [Landroid/view/View;

    .line 863
    .local v7, views:[Landroid/view/View;
    const/4 v8, 0x4

    new-array v3, v8, [Z

    .line 864
    .local v3, light:[Z
    const/4 v2, 0x0

    .line 865
    .local v2, lastView:Landroid/view/View;
    const/4 v1, 0x0

    .line 867
    .local v1, lastLight:Z
    const/4 v4, 0x0

    .line 868
    .local v4, pos:I
    if-eqz p5, :cond_0

    .line 869
    aput-object p1, v7, v4

    .line 870
    const/4 v8, 0x0

    aput-boolean v8, v3, v4

    .line 871
    add-int/lit8 v4, v4, 0x1

    .line 879
    :cond_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    const/4 p2, 0x0

    .end local p2
    :cond_1
    aput-object p2, v7, v4

    .line 882
    const/4 v8, 0x1

    aput-boolean v8, v3, v4

    .line 884
    add-int/lit8 v4, v4, 0x1

    .line 885
    if-eqz p3, :cond_2

    .line 886
    aput-object p3, v7, v4

    .line 887
    iget-boolean v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mForceInverseBackground:Z

    aput-boolean v8, v3, v4

    .line 888
    add-int/lit8 v4, v4, 0x1

    .line 890
    :cond_2
    if-nez p4, :cond_3

    if-eqz p5, :cond_4

    .line 891
    :cond_3
    aput-object p6, v7, v4

    .line 892
    const/4 v8, 0x0

    aput-boolean v8, v3, v4

    .line 895
    :cond_4
    const/4 v5, 0x0

    .line 896
    .local v5, setView:Z
    const/4 v4, 0x0

    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_a

    .line 897
    aget-object v6, v7, v4

    .line 898
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_5

    .line 896
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 901
    :cond_5
    if-eqz v2, :cond_6

    .line 902
    if-nez v5, :cond_8

    .line 903
    if-eqz v1, :cond_7

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topBright:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    :goto_3
    const/4 v5, 0x1

    .line 909
    :cond_6
    move-object v2, v6

    .line 910
    aget-boolean v1, v3, v4

    goto :goto_1

    .line 903
    :cond_7
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topDark:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 905
    :cond_8
    if-eqz v1, :cond_9

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->centerBright:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->centerDark:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 913
    .end local v6           #v:Landroid/view/View;
    :cond_a
    if-eqz v2, :cond_b

    .line 914
    if-eqz v5, :cond_10

    .line 919
    if-eqz v1, :cond_e

    if-eqz p4, :cond_d

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomMedium:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 922
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/kddi/android/iida/widget/IidaAlertController;->setupButtonsHeight(Landroid/graphics/drawable/Drawable;)V

    .line 928
    :cond_b
    :goto_6
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v8, :cond_c

    .line 929
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 930
    iget v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCheckedItem:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_c

    .line 931
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    iget v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCheckedItem:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 932
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    iget v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCheckedItem:I

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 936
    :cond_c
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->topDark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 937
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomDark:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    return-void

    .line 919
    :cond_d
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomBright:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_e
    if-eqz p4, :cond_f

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomMedium:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_f
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->bottomDark:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 924
    :cond_10
    if-eqz v1, :cond_11

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->fullBright:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_11
    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->fullDark:Landroid/graphics/drawable/Drawable;

    goto :goto_7
.end method

.method private setupButtonTextLayout()V
    .locals 17

    .prologue
    .line 941
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    .line 942
    .local v11, language:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 943
    .local v4, chinese:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 944
    .local v9, japanese:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 945
    .local v10, korean:Ljava/lang/String;
    const-string v14, "vi"

    .line 946
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

    .line 949
    .local v8, isCJKV:Z
    :goto_0
    const/4 v15, 0x3

    new-array v3, v15, [Landroid/widget/Button;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    move-object/from16 v16, v0

    aput-object v16, v3, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    move-object/from16 v16, v0

    aput-object v16, v3, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    move-object/from16 v16, v0

    aput-object v16, v3, v15

    .line 950
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

    .line 951
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 952
    .local v13, text:Ljava/lang/CharSequence;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-nez v15, :cond_3

    .line 950
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 946
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

    .line 956
    .restart local v1       #arr$:[Landroid/widget/Button;
    .restart local v2       #button:Landroid/widget/Button;
    .restart local v3       #buttons:[Landroid/widget/Button;
    .restart local v7       #i$:I
    .restart local v8       #isCJKV:Z
    .restart local v12       #len$:I
    .restart local v13       #text:Ljava/lang/CharSequence;
    :cond_3
    const/4 v5, 0x0

    .line 957
    .local v5, containsSpace:Z
    if-nez v8, :cond_4

    .line 958
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-ge v6, v15, :cond_4

    .line 959
    invoke-interface {v13, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 960
    const/4 v5, 0x1

    .line 966
    .end local v6           #i:I
    :cond_4
    if-nez v8, :cond_5

    if-eqz v5, :cond_7

    .line 968
    :cond_5
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 969
    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setMaxLines(I)V

    .line 970
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_2

    .line 958
    .restart local v6       #i:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 973
    .end local v6           #i:I
    :cond_7
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setSingleLine(Z)V

    .line 974
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setMaxLines(I)V

    .line 975
    sget-object v15, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 976
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setHorizontalFadingEdgeEnabled(Z)V

    goto :goto_2

    .line 979
    .end local v2           #button:Landroid/widget/Button;
    .end local v5           #containsSpace:Z
    .end local v13           #text:Ljava/lang/CharSequence;
    :cond_8
    return-void
.end method

.method private setupButtons()Z
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v11, 0x0

    .line 714
    const/4 v2, 0x1

    .line 715
    .local v2, BIT_BUTTON_POSITIVE:I
    const/4 v0, 0x2

    .line 716
    .local v0, BIT_BUTTON_NEGATIVE:I
    const/4 v1, 0x4

    .line 717
    .local v1, BIT_BUTTON_NEUTRAL:I
    const/4 v9, 0x0

    .line 718
    .local v9, whichButtons:I
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x1020019

    invoke-virtual {v10, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 719
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 722
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 724
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding1"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 725
    .local v5, padding1:Landroid/view/View;
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 732
    .end local v5           #padding1:Landroid/view/View;
    :goto_0
    iget-boolean v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveDisabled:Z

    if-eqz v10, :cond_0

    .line 733
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 737
    :cond_0
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x102001a

    invoke-virtual {v10, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 738
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 740
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 741
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 743
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding2"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 744
    .local v6, padding2:Landroid/view/View;
    invoke-virtual {v6, v13}, Landroid/view/View;->setVisibility(I)V

    .line 753
    .end local v6           #padding2:Landroid/view/View;
    :goto_1
    iget-boolean v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeDisabled:Z

    if-eqz v10, :cond_1

    .line 754
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 758
    :cond_1
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    const v12, 0x102001b

    invoke-virtual {v10, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 759
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 762
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 764
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding3"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    .line 765
    .local v7, padding3:Landroid/view/View;
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 772
    .end local v7           #padding3:Landroid/view/View;
    :goto_2
    iget-boolean v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralDisabled:Z

    if-eqz v10, :cond_2

    .line 773
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 780
    :cond_2
    if-ne v9, v2, :cond_9

    .line 781
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/kddi/android/iida/widget/IidaAlertController;->centerButton(Landroid/widget/Button;)V

    .line 788
    :cond_3
    :goto_3
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    .line 791
    .local v4, context:Landroid/content/Context;
    if-eqz v4, :cond_5

    .line 793
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->res:Landroid/content/res/Resources;

    iget v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->colorId:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 795
    .local v3, button_skin:Landroid/content/res/ColorStateList;
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding1"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    .line 796
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding2"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding2:Landroid/view/View;

    .line 797
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding3"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    .line 798
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v12, "padding4"

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v8

    .line 799
    .local v8, padding4:Landroid/view/View;
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->div:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding2:Landroid/view/View;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->div:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 802
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding2:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 803
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->div:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 805
    if-eqz v8, :cond_4

    .line 806
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->div:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 810
    :cond_4
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 811
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 812
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v10, v3}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 814
    const/4 v10, 0x3

    if-ne v9, v10, :cond_b

    .line 815
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 826
    .end local v3           #button_skin:Landroid/content/res/ColorStateList;
    .end local v8           #padding4:Landroid/view/View;
    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setupButtonTextLayout()V

    .line 827
    if-eqz v9, :cond_e

    const/4 v10, 0x1

    :goto_5
    return v10

    .line 727
    .end local v4           #context:Landroid/content/Context;
    :cond_6
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 729
    or-int/2addr v9, v2

    goto/16 :goto_0

    .line 747
    :cond_7
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    or-int/2addr v9, v0

    goto/16 :goto_1

    .line 767
    :cond_8
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v12, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v10, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 770
    or-int/2addr v9, v1

    goto/16 :goto_2

    .line 782
    :cond_9
    if-ne v9, v0, :cond_a

    .line 783
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/kddi/android/iida/widget/IidaAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 784
    :cond_a
    if-ne v9, v1, :cond_3

    .line 785
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/kddi/android/iida/widget/IidaAlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 816
    .restart local v3       #button_skin:Landroid/content/res/ColorStateList;
    .restart local v4       #context:Landroid/content/Context;
    .restart local v8       #padding4:Landroid/view/View;
    :cond_b
    const/4 v10, 0x5

    if-ne v9, v10, :cond_c

    .line 817
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 818
    :cond_c
    const/4 v10, 0x6

    if-ne v9, v10, :cond_d

    .line 819
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 820
    :cond_d
    const/4 v10, 0x7

    if-ne v9, v10, :cond_5

    .line 821
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 822
    iget-object v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .end local v3           #button_skin:Landroid/content/res/ColorStateList;
    .end local v8           #padding4:Landroid/view/View;
    :cond_e
    move v10, v11

    .line 827
    goto :goto_5
.end method

.method private setupButtonsHeight(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "background"

    .prologue
    .line 982
    instance-of v3, p1, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v3, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 986
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 987
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 988
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, v4

    .line 990
    .local v0, height:I
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 991
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 992
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 993
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 995
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 996
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 997
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 998
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1000
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 1001
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1002
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1003
    iget-object v3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "contentPanel"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 682
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v1, "scrollView"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 683
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 686
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    .line 687
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 711
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 694
    iget v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAutoLinkMask:I

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAutoLinkMask:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 699
    :cond_2
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 702
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 703
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v1, "scrollView"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 704
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 708
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .parameter "topPanel"

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x8

    .line 612
    const/4 v1, 0x1

    .line 614
    .local v1, hasTitle:Z
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 616
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 619
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v5, "title_template"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 623
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 678
    .end local v2           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v3           #titleTemplate:Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 625
    :cond_1
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v0, 0x1

    .line 627
    .local v0, hasTextTitle:Z
    :goto_1
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v6, "icon"

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    .line 628
    if-eqz v0, :cond_7

    .line 631
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v6, "alertTitle"

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    .line 632
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 634
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/internal/widget/DialogTitle;

    if-eqz v4, :cond_2

    .line 635
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/internal/widget/DialogTitle;

    invoke-virtual {v4}, Lcom/android/internal/widget/DialogTitle;->setNotChangeTextSize()V

    .line 638
    :cond_2
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 645
    iget v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconId:I

    if-lez v4, :cond_5

    .line 646
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconId:I

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 647
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    :cond_3
    :goto_2
    iget-boolean v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleCenter:Z

    if-eqz v4, :cond_0

    .line 664
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v5, "title_template"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 665
    .local v3, titleTemplate:Landroid/widget/LinearLayout;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .end local v0           #hasTextTitle:Z
    .end local v3           #titleTemplate:Landroid/widget/LinearLayout;
    :cond_4
    move v0, v5

    .line 625
    goto :goto_1

    .line 648
    .restart local v0       #hasTextTitle:Z
    :cond_5
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 649
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 650
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 651
    :cond_6
    iget v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconId:I

    if-nez v4, :cond_3

    .line 656
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 660
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 672
    :cond_7
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v5, "title_template"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .line 673
    .local v3, titleTemplate:Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x8

    .line 576
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v8, "contentPanel"

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 577
    .local v2, contentPanel:Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/kddi/android/iida/widget/IidaAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 578
    invoke-direct {p0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setupButtons()Z

    move-result v4

    .line 580
    .local v4, hasButtons:Z
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v8, "topPanel"

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 582
    .local v1, topPanel:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-direct {p0, v1}, Lcom/kddi/android/iida/widget/IidaAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v5

    .line 585
    .local v5, hasTitle:Z
    if-nez v5, :cond_1

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v8, "buttonPanel"

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    .line 588
    .local v6, buttonPanel:Landroid/view/View;
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    .line 589
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 592
    :cond_2
    const/4 v3, 0x0

    .line 593
    .local v3, customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 594
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v8, "customPanel"

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3           #customPanel:Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 595
    .restart local v3       #customPanel:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v8, "custom"

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 596
    .local v7, custom:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mView:Landroid/view/View;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 597
    iget-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_3

    .line 598
    iget v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingLeft:I

    iget v8, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingTop:I

    iget v9, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingRight:I

    iget v10, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingBottom:I

    invoke-virtual {v7, v0, v8, v9, v10}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 602
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .end local v7           #custom:Landroid/widget/FrameLayout;
    :cond_4
    :goto_1
    move-object v0, p0

    .line 608
    invoke-direct/range {v0 .. v6}, Lcom/kddi/android/iida/widget/IidaAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;)V

    goto :goto_0

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v8, "customPanel"

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 2
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x0

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 534
    :cond_0
    :goto_0
    return-object v0

    .line 528
    :pswitch_0
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 530
    :pswitch_1
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 532
    :pswitch_2
    iget-object v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 526
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
    .line 519
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getPadding1()Landroid/view/View;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding1:Landroid/view/View;

    return-object v0
.end method

.method public getPadding2()Landroid/view/View;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding2:Landroid/view/View;

    return-object v0
.end method

.method public getPadding3()Landroid/view/View;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mPadding3:Landroid/view/View;

    return-object v0
.end method

.method public installContent()V
    .locals 8

    .prologue
    const/high16 v6, 0x2

    const/4 v7, -0x2

    .line 305
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 307
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mView:Landroid/view/View;

    invoke-static {v4}, Lcom/kddi/android/iida/widget/IidaAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :cond_0
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 313
    :cond_1
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->resContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 314
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->layoutId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 316
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 317
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    .line 318
    invoke-direct {p0}, Lcom/kddi/android/iida/widget/IidaAlertController;->setupView()V

    .line 320
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mDecorView:Landroid/view/View;

    const-string v5, "topPanel"

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 321
    .local v2, topPanel:Landroid/widget/LinearLayout;
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    .line 322
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 323
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_2

    .line 324
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5, v7}, Landroid/view/Window;->setLayout(II)V

    .line 331
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 326
    .restart local v0       #dm:Landroid/util/DisplayMetrics;
    :cond_2
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5, v7}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    .line 330
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :cond_3
    iget-object v4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v7, v7}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

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
    .line 549
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mScrollView:Landroid/widget/ScrollView;

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
    .line 411
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 412
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 415
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :pswitch_0
    iput-object p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 419
    iput-object p4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 435
    :goto_0
    return-void

    .line 423
    :pswitch_1
    iput-object p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 424
    iput-object p4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 428
    :pswitch_2
    iput-object p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 429
    iput-object p4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 415
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
    .line 443
    packed-switch p1, :pswitch_data_0

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :pswitch_0
    iput-boolean p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonPositiveDisabled:Z

    .line 460
    :goto_0
    return-void

    .line 450
    :pswitch_1
    iput-boolean p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNeutralDisabled:Z

    goto :goto_0

    .line 454
    :pswitch_2
    iput-boolean p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mButtonNegativeDisabled:Z

    goto :goto_0

    .line 443
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
    .line 347
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mCustomTitleView:Landroid/view/View;

    .line 348
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 486
    iput p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconId:I

    .line 487
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 488
    if-lez p1, :cond_1

    .line 489
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 490
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    if-nez p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 501
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 502
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 504
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mForceInverseBackground:Z

    .line 513
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 355
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "message"
    .parameter "nAutoLinkMask"

    .prologue
    .line 365
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 366
    iput p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mAutoLinkMask:I

    .line 368
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 370
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 338
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_0
    return-void
.end method

.method public setTitleCenterEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleCenter:Z

    .line 477
    return-void
.end method

.method public setTitleDividerVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mTitleDivider:Z

    .line 469
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mView:Landroid/view/View;

    .line 380
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingSpecified:Z

    .line 381
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
    .line 388
    iput-object p1, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mView:Landroid/view/View;

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingSpecified:Z

    .line 390
    iput p2, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingLeft:I

    .line 391
    iput p3, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingTop:I

    .line 392
    iput p4, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingRight:I

    .line 393
    iput p5, p0, Lcom/kddi/android/iida/widget/IidaAlertController;->mViewSpacingBottom:I

    .line 394
    return-void
.end method
