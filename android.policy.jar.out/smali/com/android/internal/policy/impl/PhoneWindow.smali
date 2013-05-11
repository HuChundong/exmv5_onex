.class public Lcom/android/internal/policy/impl/PhoneWindow;
.super Landroid/view/Window;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;,
        Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;,
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView;,
        Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;,
        Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;,
        Lcom/android/internal/policy/impl/PhoneWindow$Injector;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_TAG:Ljava/lang/String; = "android:ActionBar"

.field private static final CURRENT_CID:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field static final DEBUG_NAV_BAR:Z = false

.field private static final FOCUSED_ID_TAG:Ljava/lang/String; = "android:focusedViewId"

.field private static final IS_KIKIN_ENABLED:Z = false

.field private static final PANELS_TAG:Ljava/lang/String; = "android:Panels"

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "PhoneWindow"

.field private static final VIEWS_TAG:Ljava/lang/String; = "android:views"

.field static final isWVGA:Z

.field static mAppSwitchType:I

.field static mFirstCheck:Z

.field static sNavigationBarBlackList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;


# instance fields
.field private fakescreenBackgroundColor:I

.field private final fakescreenDebug:Z

.field private fakescreenFooterEnable:Z

.field private fakescreenHeaderEnable:Z

.field private isPortrait:Z

.field private isRecentAP:Z

.field private mActionBar:Lcom/android/internal/widget/ActionBarView;

.field private mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

.field private mAlwaysReadCloseOnTouchAttr:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field mCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mCircularProgressBar:Landroid/widget/ProgressBar;

.field private mClosingActionMenu:Z

.field private mContentParent:Landroid/view/ViewGroup;

.field private mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

.field final mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

.field private mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

.field private mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field private mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

.field mFixedHeightMajor:Landroid/util/TypedValue;

.field mFixedHeightMinor:Landroid/util/TypedValue;

.field mFixedWidthMajor:Landroid/util/TypedValue;

.field mFixedWidthMinor:Landroid/util/TypedValue;

.field private mFrameResource:I

.field private mHorizontalProgressBar:Landroid/widget/ProgressBar;

.field private mIsFloating:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLeftIconView:Landroid/widget/ImageView;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;

.field final mMinWidthMajor:Landroid/util/TypedValue;

.field final mMinWidthMinor:Landroid/util/TypedValue;

.field private mPanelChordingKey:I

.field private mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

.field private mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

.field private mRightIconView:Landroid/widget/ImageView;

.field mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

.field private mTextColor:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleColor:I

.field private mTitleView:Landroid/widget/TextView;

.field private mUiOptions:I

.field private mVolumeControlStreamType:I

.field private simpleLayout:Z

.field private thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 243
    const-string v0, "4.0a"

    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Extra_Sense_Version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    .line 245
    const-string v0, "debug_nav_bar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    .line 251
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.apps.books"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.apps.maps"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.location"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.youtube"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.google.android.apps.translate"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.melimots.WordSearch"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.mobilityware.solitaire"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "net.cdeguet.smartkeyboardpro"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    const-string v2, "com.rubicon.dev.glwg"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    .line 274
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    .line 297
    const-string v0, "ro.cid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->CURRENT_CID:Ljava/lang/String;

    .line 309
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    return-void

    :cond_0
    move v0, v1

    .line 272
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/high16 v5, -0x8000

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    invoke-direct {p0, p1}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    .line 156
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    .line 158
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 159
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 211
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 215
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 217
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 219
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 221
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 223
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 229
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 234
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 275
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    .line 279
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    .line 281
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    .line 283
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    .line 285
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenDebug:Z

    .line 288
    iput v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    .line 291
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 4184
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindow$4;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 313
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 314
    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PhoneWindow;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PhoneWindow;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->showNavigationBarTips(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow;ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    return-object p1
.end method

.method private callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V
    .locals 2
    .parameter "featureId"
    .parameter "panel"
    .parameter "menu"

    .prologue
    .line 3582
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3583
    .local v0, cb:Landroid/view/Window$Callback;
    if-nez v0, :cond_1

    .line 3608
    :cond_0
    :goto_0
    return-void

    .line 3587
    :cond_1
    if-nez p3, :cond_3

    .line 3589
    if-nez p2, :cond_2

    .line 3590
    if-ltz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 3591
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    aget-object p2, v1, p1

    .line 3595
    :cond_2
    if-eqz p2, :cond_3

    .line 3597
    iget-object p3, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 3602
    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 3605
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3606
    invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method private static clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V
    .locals 1
    .parameter "st"

    .prologue
    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->clearMenuPresenters()V

    .line 607
    return-void
.end method

.method private declared-synchronized closeContextMenu()V
    .locals 1

    .prologue
    .line 981
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->close()V

    .line 983
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->dismissContextMenu()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    :cond_0
    monitor-exit p0

    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized dismissContextMenu()V
    .locals 1

    .prologue
    .line 992
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 994
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :cond_0
    monitor-exit p0

    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getCircularProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .parameter "shouldInstallDecor"

    .prologue
    .line 3533
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3534
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3543
    :goto_0
    return-object v0

    .line 3536
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3537
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3539
    :cond_1
    const v0, 0x1020317

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    .line 3540
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 3541
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3543
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCircularProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    .locals 6
    .parameter "featureId"
    .parameter "required"

    .prologue
    const/4 v5, 0x0

    .line 3373
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 3374
    if-nez p2, :cond_1

    .line 3375
    const/4 v2, 0x0

    .line 3393
    :cond_0
    :goto_0
    return-object v2

    .line 3377
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3381
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .local v0, ar:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 3382
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3383
    .local v1, nar:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_4

    .line 3384
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3386
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDrawables:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .line 3389
    .end local v1           #nar:[Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 3390
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-nez v2, :cond_0

    .line 3391
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;-><init>(I)V

    .restart local v2       #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    aput-object v2, v0, p1

    goto :goto_0
.end method

.method private getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;
    .locals 2
    .parameter "shouldInstallDecor"

    .prologue
    .line 3547
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3557
    :goto_0
    return-object v0

    .line 3550
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 3551
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3553
    :cond_1
    const v0, 0x1020318

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    .line 3554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    .line 3555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3557
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mHorizontalProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 1576
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private getLeftIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 3523
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3524
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    .line 3529
    :goto_0
    return-object v0

    .line 3526
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3527
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3529
    :cond_1
    const v0, 0x1020232

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLeftIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getOptionsPanelGravity()I
    .locals 3

    .prologue
    .line 1183
    :try_start_0
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow$WindowManagerHolder;->sWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getPreferredOptionsPanelGravity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1186
    :goto_0
    return v1

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "PhoneWindow"

    const-string v2, "Couldn\'t getOptionsPanelGravity; using default"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1186
    const/16 v1, 0x51

    goto :goto_0
.end method

.method private getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 1
    .parameter "featureId"
    .parameter "required"

    .prologue
    .line 3405
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    return-object v0
.end method

.method private getPanelState(IZLcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 6
    .parameter "featureId"
    .parameter "required"
    .parameter "convertPanelState"

    .prologue
    const/4 v5, 0x0

    .line 3420
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v3

    const/4 v4, 0x1

    shl-int/2addr v4, p1

    and-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 3421
    if-nez p2, :cond_1

    .line 3422
    const/4 v2, 0x0

    .line 3442
    :cond_0
    :goto_0
    return-object v2

    .line 3424
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "The feature has not been requested"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3428
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .local v0, ar:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    array-length v3, v0

    if-gt v3, p1, :cond_5

    .line 3429
    :cond_3
    add-int/lit8 v3, p1, 0x1

    new-array v1, v3, [Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 3430
    .local v1, nar:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_4

    .line 3431
    array-length v3, v0

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3433
    :cond_4
    move-object v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 3436
    .end local v1           #nar:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_5
    aget-object v2, v0, p1

    .line 3437
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v2, :cond_0

    .line 3438
    if-eqz p3, :cond_6

    move-object v2, p3

    :goto_1
    aput-object v2, v0, p1

    goto :goto_0

    :cond_6
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;-><init>(I)V

    goto :goto_1
.end method

.method private getResource(I)I
    .locals 3
    .parameter "resouceId"

    .prologue
    .line 4254
    move v0, p1

    .line 4260
    .local v0, value:I
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x149

    if-ne v1, v2, :cond_0

    .line 4290
    :cond_0
    return v0
.end method

.method private getRightIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 3561
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3562
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    .line 3567
    :goto_0
    return-object v0

    .line 3564
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 3565
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 3567
    :cond_1
    const v0, 0x1020234

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mRightIconView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getSkinIdentifier(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 3
    .parameter "resource"
    .parameter "resourceName"

    .prologue
    .line 4226
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 4227
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "drawable"

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "com.htc"

    .end local v0           #packageName:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 5
    .parameter "horizontalProgressBar"
    .parameter "spinnyProgressBar"

    .prologue
    const/4 v4, 0x4

    .line 1465
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1466
    .local v1, features:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1467
    .local v0, anim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1468
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1470
    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1471
    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1473
    :cond_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1475
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1476
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1478
    :cond_1
    return-void
.end method

.method private installDecor()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 3252
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v7, :cond_0

    .line 3253
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 3254
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/high16 v9, 0x4

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setDescendantFocusability(I)V

    .line 3255
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setIsRootNamespace(Z)V

    .line 3257
    :cond_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v7, :cond_2

    .line 3258
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 3261
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->makeOptionalFitsSystemWindows()V

    .line 3263
    const v7, 0x1020016

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    .line 3264
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    .line 3265
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 3266
    const v7, 0x1020235

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 3267
    .local v6, titleContainer:Landroid/view/View;
    if-eqz v6, :cond_3

    .line 3268
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3272
    :goto_0
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    instance-of v7, v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_1

    .line 3273
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 3337
    .end local v6           #titleContainer:Landroid/view/View;
    :cond_1
    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    if-eqz v7, :cond_2

    .line 3338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v9, 0x800

    and-int/2addr v7, v9

    if-eqz v7, :cond_d

    .line 3340
    .local v2, needsMenuKey:Z
    :goto_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindow$2;

    invoke-direct {v8, p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    invoke-virtual {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 3360
    .end local v2           #needsMenuKey:Z
    :cond_2
    return-void

    .line 3270
    .restart local v6       #titleContainer:Landroid/view/View;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3276
    .end local v6           #titleContainer:Landroid/view/View;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3279
    :cond_5
    const v7, 0x102031a

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ActionBarView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    .line 3280
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v7, :cond_1

    .line 3281
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/ActionBarView;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 3282
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_6

    .line 3283
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 3285
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 3286
    .local v1, localFeatures:I
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_7

    .line 3287
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView;->initProgress()V

    .line 3289
    :cond_7
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_8

    .line 3290
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarView;->initIndeterminateProgress()V

    .line 3293
    :cond_8
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-static {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->handleStartingWindow(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/widget/ActionBarView;)V

    const/4 v3, 0x0

    .line 3294
    .local v3, splitActionBar:Z
    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    move v5, v2

    .line 3296
    .local v5, splitWhenNarrow:Z
    :goto_3
    if-eqz v5, :cond_b

    .line 3297
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110002

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 3303
    :goto_4
    const v7, 0x102031c

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarContainer;

    .line 3305
    .local v4, splitView:Lcom/android/internal/widget/ActionBarContainer;
    if-eqz v4, :cond_c

    .line 3306
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7, v4}, Lcom/android/internal/widget/ActionBarView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    .line 3307
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7, v3}, Lcom/android/internal/widget/ActionBarView;->setSplitActionBar(Z)V

    .line 3308
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v7, v5}, Lcom/android/internal/widget/ActionBarView;->setSplitWhenNarrow(Z)V

    .line 3310
    const v7, 0x102031b

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .line 3312
    .local v0, cab:Lcom/android/internal/widget/ActionBarContextView;
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/ActionBarContextView;->setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V

    .line 3313
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->setSplitActionBar(Z)V

    .line 3314
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/ActionBarContextView;->setSplitWhenNarrow(Z)V

    .line 3322
    .end local v0           #cab:Lcom/android/internal/widget/ActionBarContextView;
    :cond_9
    :goto_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    new-instance v9, Lcom/android/internal/policy/impl/PhoneWindow$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PhoneWindow$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v7, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .end local v4           #splitView:Lcom/android/internal/widget/ActionBarContainer;
    .end local v5           #splitWhenNarrow:Z
    :cond_a
    move v5, v8

    .line 3294
    goto :goto_3

    .line 3300
    .restart local v5       #splitWhenNarrow:Z
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v7

    const/16 v9, 0x16

    invoke-virtual {v7, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_4

    .line 3315
    .restart local v4       #splitView:Lcom/android/internal/widget/ActionBarContainer;
    :cond_c
    if-eqz v3, :cond_9

    .line 3316
    const-string v7, "PhoneWindow"

    const-string v9, "Requested split action bar with incompatible window decor! Ignoring request."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v1           #localFeatures:I
    .end local v3           #splitActionBar:Z
    .end local v4           #splitView:Lcom/android/internal/widget/ActionBarContainer;
    .end local v5           #splitWhenNarrow:Z
    :cond_d
    move v2, v8

    .line 3338
    goto/16 :goto_2
.end method

.method private launchDefaultSearch()Z
    .locals 2

    .prologue
    .line 3617
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3618
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3619
    :cond_0
    const/4 v1, 0x0

    .line 3622
    :goto_0
    return v1

    .line 3621
    :cond_1
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3622
    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v1

    goto :goto_0
.end method

.method private loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 3364
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3369
    :goto_0
    return-object v1

    .line 3366
    :catch_0
    move-exception v0

    .line 3367
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PhoneWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V
    .locals 18
    .parameter "st"
    .parameter "event"

    .prologue
    .line 625
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/htc/autotest/Recorder;->dumpShowMenu(Landroid/view/KeyEvent;ZZ)V

    .line 629
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v4, :cond_2

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 637
    .local v13, context:Landroid/content/Context;
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    .line 638
    .local v12, config:Landroid/content/res/Configuration;
    iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v15, 0x1

    .line 640
    .local v15, isXLarge:Z
    :goto_1
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_4

    const/4 v14, 0x1

    .line 643
    .local v14, isHoneycombApp:Z
    :goto_2
    if-eqz v15, :cond_2

    if-nez v14, :cond_0

    .line 648
    .end local v12           #config:Landroid/content/res/Configuration;
    .end local v13           #context:Landroid/content/Context;
    .end local v14           #isHoneycombApp:Z
    .end local v15           #isXLarge:Z
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v11

    .line 649
    .local v11, cb:Landroid/view/Window$Callback;
    if-eqz v11, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 651
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0

    .line 638
    .end local v11           #cb:Landroid/view/Window$Callback;
    .restart local v12       #config:Landroid/content/res/Configuration;
    .restart local v13       #context:Landroid/content/Context;
    :cond_3
    const/4 v15, 0x0

    goto :goto_1

    .line 640
    .restart local v15       #isXLarge:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 655
    .end local v12           #config:Landroid/content/res/Configuration;
    .end local v13           #context:Landroid/content/Context;
    .end local v15           #isXLarge:Z
    .restart local v11       #cb:Landroid/view/Window$Callback;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    .line 656
    .local v17, wm:Landroid/view/WindowManager;
    if-eqz v17, :cond_0

    .line 661
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    const/4 v3, -0x2

    .line 666
    .local v3, width:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_d

    .line 667
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v4, :cond_b

    .line 669
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_0

    .line 677
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->hasPanelItems()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 681
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 682
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v2, :cond_8

    .line 683
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 687
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 690
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 691
    .local v10, backgroundResId:I
    const/4 v3, -0x1

    .line 696
    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 699
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 700
    .local v16, shownPanelParent:Landroid/view/ViewParent;
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_9

    .line 701
    check-cast v16, Landroid/view/ViewGroup;

    .end local v16           #shownPanelParent:Landroid/view/ViewParent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 703
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_a

    .line 710
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 723
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #backgroundResId:I
    :cond_a
    :goto_5
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 724
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 726
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->x:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->y:I

    const/16 v7, 0x3eb

    const v8, 0x821000

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget v9, v9, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 734
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v4, :cond_f

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 736
    sget-object v4, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->addWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 741
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->handleAppLayoutParams(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V

    .line 743
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 671
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_b
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 673
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeAllViews()V

    goto/16 :goto_3

    .line 694
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .restart local v10       #backgroundResId:I
    goto/16 :goto_4

    .line 712
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v10           #backgroundResId:I
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v4

    if-nez v4, :cond_e

    .line 713
    const/4 v3, -0x1

    goto :goto_5

    .line 714
    :cond_e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v4, :cond_miui_0

    .line 717
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 718
    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_a

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 719
    const/4 v3, -0x1

    goto/16 :goto_5

    .line 738
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    :cond_f
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_6

    :cond_miui_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .restart local v2       #lp:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_miui_1

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_miui_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0
.end method

.method private openPanelsAfterRestore()V
    .locals 4

    .prologue
    .line 1815
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1817
    .local v1, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1835
    :cond_0
    return-void

    .line 1822
    :cond_1
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1823
    aget-object v2, v1, v0

    .line 1827
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_2

    .line 1828
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->applyFrozenState()V

    .line 1829
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    if-eqz v3, :cond_2

    .line 1830
    iget-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1831
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 1822
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    .locals 3
    .parameter "st"
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    .line 1007
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 1008
    :cond_0
    const/4 v0, 0x0

    .line 1030
    :cond_1
    :goto_0
    return v0

    .line 1011
    :cond_2
    const/4 v0, 0x0

    .line 1015
    .local v0, handled:Z
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_4

    .line 1017
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1020
    :cond_4
    if-eqz v0, :cond_1

    .line 1022
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1025
    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v1, :cond_1

    .line 1026
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method private printViewTree(Landroid/view/ViewGroup;I)V
    .locals 6
    .parameter "container"
    .parameter "level"

    .prologue
    .line 4077
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4078
    .local v1, count:I
    const-string v3, "PhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4080
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 4081
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4082
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4083
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #child:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->printViewTree(Landroid/view/ViewGroup;I)V

    .line 4080
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4085
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    const-string v3, "PhoneWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4088
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private reopenMenu(Z)V
    .locals 8
    .parameter "toggleMenuMode"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1082
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1083
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1084
    .local v0, cb:Landroid/view/Window$Callback;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_3

    .line 1085
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 1086
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1087
    .local v2, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v4, v3, v5}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1089
    sget-boolean v3, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v3, :cond_1

    .line 1090
    invoke-static {}, Lcom/htc/utils/PerformanceLogUtil;->logShowActionBarOverflowMenu()V

    .line 1094
    :cond_1
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1095
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 1124
    .end local v0           #cb:Landroid/view/Window$Callback;
    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    :goto_0
    return-void

    .line 1099
    .restart local v0       #cb:Landroid/view/Window$Callback;
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    .line 1100
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1101
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1102
    .restart local v2       #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v6, v3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_0

    .line 1108
    .end local v0           #cb:Landroid/view/Window$Callback;
    .end local v2           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-direct {p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 1111
    .restart local v2       #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz p1, :cond_6

    iget-boolean v5, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v5, :cond_5

    move v1, v3

    .line 1113
    .local v1, newExpandedMode:Z
    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 1114
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 1117
    iput-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 1120
    iget-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    invoke-static {v7, v3, v4}, Lcom/htc/autotest/Recorder;->dumpShowMenu(Landroid/view/KeyEvent;ZZ)V

    .line 1123
    invoke-direct {p0, v2, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0

    .end local v1           #newExpandedMode:Z
    :cond_5
    move v1, v4

    .line 1111
    goto :goto_1

    :cond_6
    iget-boolean v1, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    goto :goto_1
.end method

.method private restorePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1792
    .local p1, icicles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, curFeatureId:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1793
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1794
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_0

    .line 1792
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1799
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1800
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->invalidatePanelMenu(I)V

    goto :goto_1

    .line 1807
    .end local v1           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    return-void
.end method

.method private savePanelState(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1773
    .local p1, icicles:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1774
    .local v1, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1783
    :cond_0
    return-void

    .line 1778
    :cond_1
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, curFeatureId:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1779
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    .line 1780
    aget-object v2, v1, v0

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1778
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private showNavigationBarTips(Z)V
    .locals 13
    .parameter "needsMenuKey"

    .prologue
    .line 4093
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4094
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 4182
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    const-string v10, "persist.sys.navtips.nevershow"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 4099
    .local v8, noShowMenuTips:Z
    if-nez v8, :cond_0

    .line 4103
    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v10, v11, :cond_0

    .line 4107
    if-eqz p1, :cond_0

    .line 4111
    sget-object v10, Lcom/android/internal/policy/impl/PhoneWindow;->sNavigationBarBlackList:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 4112
    .local v1, black:Ljava/lang/Boolean;
    if-eqz v1, :cond_2

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-ne v10, v11, :cond_2

    .line 4113
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v10, :cond_0

    .line 4114
    const-string v10, "PhoneWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNavigationBarTips, don\'t show top, pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in black list"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4120
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "APP_SWITCH_KEY_BEHAVIOR"

    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->isWVGA:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x2

    :goto_1
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4124
    .local v0, appswitchDefault:I
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v10, :cond_3

    .line 4125
    const-string v10, "PhoneWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNavigationBarTips, mAppSwitchType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", appswitchDefault="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    :cond_3
    sget v10, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    if-eq v10, v0, :cond_4

    .line 4131
    sput v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    .line 4132
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    .line 4136
    :cond_4
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    if-nez v10, :cond_0

    .line 4140
    sget-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_NAV_BAR:Z

    if-eqz v10, :cond_5

    .line 4141
    const-string v10, "PhoneWindow"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showNavigationBarTips, show dialog, title: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", pkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4147
    :cond_5
    const-string v10, "layout_inflater"

    invoke-virtual {v2, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 4149
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v10, 0x4030011

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 4150
    .local v3, customView:Landroid/view/View;
    const v10, 0x4110010

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 4152
    .local v7, message:Landroid/widget/TextView;
    sget v10, Lcom/android/internal/policy/impl/PhoneWindow;->mAppSwitchType:I

    packed-switch v10, :pswitch_data_0

    .line 4161
    :goto_2
    const v10, 0x4110011

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcCheckBox;

    iput-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 4162
    iget-object v10, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 4163
    const v10, 0x4110012

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 4164
    .local v9, remindMe:Landroid/widget/TextView;
    const v10, 0x4070034

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 4165
    new-instance v10, Lcom/android/internal/policy/impl/PhoneWindow$3;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/PhoneWindow$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4172
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4173
    .local v4, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4174
    const v10, 0x4070030

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4175
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4176
    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4177
    const v10, 0x2040258

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v10, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4178
    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 4179
    .local v6, menuDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v10

    if-nez v10, :cond_6

    .line 4180
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 4181
    :cond_6
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/policy/impl/PhoneWindow;->mFirstCheck:Z

    goto/16 :goto_0

    .line 4120
    .end local v0           #appswitchDefault:I
    .end local v3           #customView:Landroid/view/View;
    .end local v4           #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #menuDialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v7           #message:Landroid/widget/TextView;
    .end local v9           #remindMe:Landroid/widget/TextView;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 4154
    .restart local v0       #appswitchDefault:I
    .restart local v3       #customView:Landroid/view/View;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v7       #message:Landroid/widget/TextView;
    :pswitch_0
    const v10, 0x4070033

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 4157
    :pswitch_1
    const v10, 0x4070032

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 4152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V
    .locals 4
    .parameter "horizontalProgressBar"
    .parameter "spinnyProgressBar"

    .prologue
    const/4 v3, 0x0

    .line 1452
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v0

    .line 1453
    .local v0, features:I
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1455
    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1458
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 1460
    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1462
    :cond_1
    return-void
.end method

.method private updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V
    .locals 4
    .parameter "featureId"
    .parameter "st"
    .parameter "fromResume"

    .prologue
    .line 3466
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 3497
    :cond_0
    :goto_0
    return-void

    .line 3470
    :cond_1
    const/4 v2, 0x1

    shl-int v1, v2, p1

    .line 3472
    .local v1, featureMask:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    .line 3476
    :cond_2
    const/4 v0, 0x0

    .line 3477
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_4

    .line 3478
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3479
    if-nez v0, :cond_3

    .line 3480
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 3481
    :cond_3
    if-nez v0, :cond_4

    .line 3482
    iget-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 3484
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v2

    and-int/2addr v2, v1

    if-nez v2, :cond_6

    .line 3485
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3486
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isActive()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_0

    .line 3487
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/view/Window;->setChildDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3490
    :cond_6
    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    if-ne v2, v0, :cond_7

    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    iget v3, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v2, v3, :cond_0

    .line 3493
    :cond_7
    iput-object v0, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->cur:Landroid/graphics/drawable/Drawable;

    .line 3494
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    iput v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->curAlpha:I

    .line 3495
    iget v2, p2, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V

    goto :goto_0
.end method

.method private updateInt(IIZ)V
    .locals 2
    .parameter "featureId"
    .parameter "value"
    .parameter "fromResume"

    .prologue
    .line 3503
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 3520
    :cond_0
    :goto_0
    return-void

    .line 3507
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 3509
    .local v0, featureMask:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    if-eqz p3, :cond_0

    .line 3513
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    .line 3514
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3515
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/Window;->setChildInt(II)V

    goto :goto_0

    .line 3518
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->onIntChanged(II)V

    goto :goto_0
.end method

.method private updateProgressBars(I)V
    .locals 10
    .parameter "value"

    .prologue
    const/16 v9, 0x8

    const/16 v8, 0x2710

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1407
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v0

    .line 1408
    .local v0, circularProgressBar:Landroid/widget/ProgressBar;
    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow;->getHorizontalProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v2

    .line 1410
    .local v2, horizontalProgressBar:Landroid/widget/ProgressBar;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v1

    .line 1411
    .local v1, features:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_4

    .line 1412
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_1

    .line 1413
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 1414
    .local v3, level:I
    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v6

    if-nez v6, :cond_0

    if-ge v3, v8, :cond_3

    :cond_0
    move v4, v5

    .line 1416
    .local v4, visibility:I
    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1418
    .end local v3           #level:I
    .end local v4           #visibility:I
    :cond_1
    and-int/lit8 v6, v1, 0x20

    if-eqz v6, :cond_2

    .line 1419
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1449
    :cond_2
    :goto_1
    return-void

    .line 1414
    .restart local v3       #level:I
    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    .line 1421
    .end local v3           #level:I
    :cond_4
    const/4 v6, -0x2

    if-ne p1, v6, :cond_6

    .line 1422
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_5

    .line 1423
    invoke-virtual {v2, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1425
    :cond_5
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_2

    .line 1426
    invoke-virtual {v0, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 1428
    :cond_6
    const/4 v6, -0x3

    if-ne p1, v6, :cond_7

    .line 1429
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 1430
    :cond_7
    const/4 v6, -0x4

    if-ne p1, v6, :cond_8

    .line 1431
    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_1

    .line 1432
    :cond_8
    if-ltz p1, :cond_a

    if-gt p1, v8, :cond_a

    .line 1436
    add-int/lit8 v5, p1, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1438
    if-ge p1, v8, :cond_9

    .line 1439
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 1441
    :cond_9
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->hideProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1

    .line 1443
    :cond_a
    const/16 v5, 0x4e20

    if-gt v5, p1, :cond_2

    const/16 v5, 0x7530

    if-gt p1, v5, :cond_2

    .line 1444
    add-int/lit16 v5, p1, -0x4e20

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 1446
    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->showProgressBars(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;)V

    goto :goto_1
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 398
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 399
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 401
    :cond_1
    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .locals 1

    .prologue
    .line 3248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    .line 3249
    return-void
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 814
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    if-eqz v1, :cond_0

    .line 825
    :goto_0
    return-void

    .line 818
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    .line 819
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->dismissPopupMenus()V

    .line 820
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 821
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 822
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 824
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mClosingActionMenu:Z

    goto :goto_0
.end method

.method public final closeAllPanels()V
    .locals 6

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 960
    .local v4, wm:Landroid/view/ViewManager;
    if-nez v4, :cond_0

    .line 974
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 965
    .local v3, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_2

    array-length v0, v3

    .line 966
    .local v0, N:I
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 967
    aget-object v2, v3, v1

    .line 968
    .local v2, panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    .line 969
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 966
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 965
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 973
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0
.end method

.method public final closePanel(I)V
    .locals 2
    .parameter "featureId"

    .prologue
    const/4 v1, 0x1

    .line 749
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    .line 757
    :goto_0
    return-void

    .line 752
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 753
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeContextMenu()V

    goto :goto_0

    .line 755
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public final closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V
    .locals 4
    .parameter "st"
    .parameter "doCallback"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 772
    if-eqz p2, :cond_1

    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->checkCloseActionMenu(Landroid/view/Menu;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 779
    .local v0, wm:Landroid/view/ViewManager;
    if-eqz v0, :cond_3

    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_3

    .line 780
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v1, :cond_2

    .line 781
    iget-object v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 783
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v1, :cond_2

    .line 784
    sget-object v1, Lcom/android/internal/policy/impl/PhoneWindow;->sRotationWatcher:Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;

    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindow$RotationWatcher;->removeWindow(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 788
    :cond_2
    if-eqz p2, :cond_3

    .line 789
    iget v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->callOnPanelClosed(ILcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/Menu;)V

    .line 793
    :cond_3
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 794
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 795
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 798
    iput-object v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 800
    iget-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v1, :cond_4

    .line 803
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 804
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    .line 807
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-ne v1, p1, :cond_0

    .line 808
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 809
    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    goto :goto_0
.end method

.method public findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .locals 5
    .parameter "menu"

    .prologue
    .line 1055
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    .line 1056
    .local v3, panels:[Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v3, :cond_0

    array-length v0, v3

    .line 1057
    .local v0, N:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 1058
    aget-object v2, v3, v1

    .line 1059
    .local v2, panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne v4, p1, :cond_1

    .line 1063
    .end local v2           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_2
    return-object v2

    .line 1056
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1057
    .restart local v0       #N:I
    .restart local v1       #i:I
    .restart local v2       #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1063
    .end local v2           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 2753
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 41
    .parameter "decor"

    .prologue
    .line 2774
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2786
    .local v4, a:Landroid/content/res/TypedArray;
    const/16 v38, 0x4

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    .line 2787
    const v38, 0x10100

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v39

    xor-int/lit8 v39, v39, -0x1

    and-int v14, v38, v39

    .line 2789
    .local v14, flagsToUpdate:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1a

    .line 2790
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->getFloatingWindowWidth(Landroid/content/Context;)I

    move-result v38

    const/16 v39, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setLayout(II)V

    .line 2791
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 2796
    :goto_0
    const/16 v38, 0x3

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 2797
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 2800
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    .line 2807
    :cond_0
    :goto_1
    const/16 v38, 0x11

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 2808
    const/16 v38, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 2811
    :cond_1
    const/16 v38, 0x10

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 2812
    const/16 v38, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 2815
    :cond_2
    const/16 v38, 0x9

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 2816
    const/16 v38, 0x400

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v39

    xor-int/lit8 v39, v39, -0x1

    move/from16 v0, v39

    and-int/lit16 v0, v0, 0x400

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 2819
    :cond_3
    const/16 v38, 0xe

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 2820
    const/high16 v38, 0x10

    const/high16 v39, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v40

    xor-int/lit8 v40, v40, -0x1

    and-int v39, v39, v40

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 2823
    :cond_4
    const/16 v39, 0x12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    const/16 v40, 0xb

    move/from16 v0, v38

    move/from16 v1, v40

    if-lt v0, v1, :cond_1c

    const/16 v38, 0x1

    :goto_2
    move/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_5

    .line 2826
    const/high16 v38, 0x80

    const/high16 v39, 0x80

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v40

    xor-int/lit8 v40, v40, -0x1

    and-int v39, v39, v40

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    .line 2829
    :cond_5
    const/16 v38, 0x13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2830
    const/16 v38, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2831
    const/16 v38, 0x17

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 2832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_6

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 2833
    :cond_6
    const/16 v38, 0x17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2836
    :cond_7
    const/16 v38, 0x19

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_8

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2838
    :cond_8
    const/16 v38, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2841
    :cond_9
    const/16 v38, 0x1a

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 2842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_a

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2843
    :cond_a
    const/16 v38, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2846
    :cond_b
    const/16 v38, 0x18

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 2847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v38, v0

    if-nez v38, :cond_c

    new-instance v38, Landroid/util/TypedValue;

    invoke-direct/range {v38 .. v38}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 2848
    :cond_c
    const/16 v38, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    move-object/from16 v39, v0

    move/from16 v0, v38

    move-object/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 2852
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 2853
    .local v11, context:Landroid/content/Context;
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v35, v0

    .line 2854
    .local v35, targetSdk:I
    const/16 v38, 0xb

    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    const/16 v33, 0x1

    .line 2855
    .local v33, targetPreHoneycomb:Z
    :goto_3
    const/16 v38, 0xe

    move/from16 v0, v35

    move/from16 v1, v38

    if-ge v0, v1, :cond_1e

    const/16 v34, 0x1

    .line 2856
    .local v34, targetPreIcs:Z
    :goto_4
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x1110006

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v32

    .line 2858
    .local v32, targetHcNeedsOptions:Z
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v38

    if-eqz v38, :cond_e

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v38

    if-eqz v38, :cond_1f

    :cond_e
    const/16 v24, 0x1

    .line 2860
    .local v24, noActionBar:Z
    :goto_5
    if-nez v33, :cond_f

    if-eqz v34, :cond_20

    if-eqz v32, :cond_20

    if-eqz v24, :cond_20

    .line 2861
    :cond_f
    const/high16 v38, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 2866
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mAlwaysReadCloseOnTouchAttr:Z

    move/from16 v38, v0

    if-nez v38, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v38

    move-object/from16 v0, v38

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v38, v0

    const/16 v39, 0xb

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_11

    .line 2868
    :cond_10
    const/16 v38, 0x15

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 2871
    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setCloseOnTouchOutsideIfNotSet(Z)V

    .line 2875
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v25

    .line 2877
    .local v25, params:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->hasSoftInputMode()Z

    move-result v38

    if-nez v38, :cond_12

    .line 2878
    const/16 v38, 0xd

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2883
    :cond_12
    const/16 v38, 0xb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_14

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getForcedWindowFlags()I

    move-result v38

    and-int/lit8 v38, v38, 0x2

    if-nez v38, :cond_13

    .line 2887
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v38, v0

    or-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2889
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->haveDimAmount()Z

    move-result v38

    if-nez v38, :cond_14

    .line 2890
    const/16 v38, 0x0

    const/high16 v39, 0x3f00

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 2895
    :cond_14
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    move/from16 v38, v0

    if-nez v38, :cond_15

    .line 2896
    const/16 v38, 0x8

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2902
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v38

    if-nez v38, :cond_18

    .line 2903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v38, v0

    if-nez v38, :cond_17

    .line 2904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v38, v0

    if-nez v38, :cond_16

    .line 2905
    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 2908
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v38, v0

    if-nez v38, :cond_17

    .line 2909
    const/16 v38, 0x2

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    .line 2917
    :cond_17
    const/16 v38, 0x7

    const/high16 v39, -0x100

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    .line 2923
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I

    move-result v13

    .line 2925
    .local v13, features:I
    and-int/lit8 v38, v13, 0x18

    if-eqz v38, :cond_22

    .line 2926
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_21

    .line 2927
    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .line 2928
    .local v29, res:Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v38

    const v39, 0x10103cb

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2930
    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    .line 2937
    .end local v29           #res:Landroid/util/TypedValue;
    .local v19, layoutResource:I
    :goto_7
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 2996
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startChanging()V

    .line 2999
    const/16 v18, 0x0

    .line 3002
    .local v18, in:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_2b

    .line 3004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v19

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 3005
    new-instance v38, Landroid/view/ViewGroup$LayoutParams;

    const/16 v39, -0x1

    const/16 v40, -0x1

    invoke-direct/range {v38 .. v40}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3060
    :cond_19
    :goto_9
    const v38, 0x1020002

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 3063
    .local v10, contentParent:Landroid/view/ViewGroup;
    if-nez v10, :cond_34

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_34

    .line 3065
    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "layoutResource: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    if-nez v18, :cond_32

    .line 3067
    const-string v38, "PhoneWindow"

    const-string v39, "LayoutInflater.inflate() = null"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    .end local v18           #in:Landroid/view/View;
    :goto_a
    new-instance v38, Ljava/lang/RuntimeException;

    const-string v39, "Window couldn\'t find content container view"

    invoke-direct/range {v38 .. v39}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 2793
    .end local v10           #contentParent:Landroid/view/ViewGroup;
    .end local v11           #context:Landroid/content/Context;
    .end local v13           #features:I
    .end local v19           #layoutResource:I
    .end local v24           #noActionBar:Z
    .end local v25           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v32           #targetHcNeedsOptions:Z
    .end local v33           #targetPreHoneycomb:Z
    .end local v34           #targetPreIcs:Z
    .end local v35           #targetSdk:I
    :cond_1a
    const v38, 0x10100

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/internal/policy/impl/PhoneWindow;->setFlags(II)V

    goto/16 :goto_0

    .line 2802
    :cond_1b
    const/16 v38, 0xf

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2804
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    goto/16 :goto_1

    .line 2823
    :cond_1c
    const/16 v38, 0x0

    goto/16 :goto_2

    .line 2854
    .restart local v11       #context:Landroid/content/Context;
    .restart local v35       #targetSdk:I
    :cond_1d
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 2855
    .restart local v33       #targetPreHoneycomb:Z
    :cond_1e
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 2858
    .restart local v32       #targetHcNeedsOptions:Z
    .restart local v34       #targetPreIcs:Z
    :cond_1f
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 2863
    .restart local v24       #noActionBar:Z
    :cond_20
    const/high16 v38, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    goto/16 :goto_6

    .line 2933
    .restart local v13       #features:I
    .restart local v25       #params:Landroid/view/WindowManager$LayoutParams;
    :cond_21
    const v38, 0x109009e

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_7

    .line 2939
    .end local v19           #layoutResource:I
    :cond_22
    and-int/lit8 v38, v13, 0x24

    if-eqz v38, :cond_23

    and-int/lit16 v0, v13, 0x100

    move/from16 v38, v0

    if-nez v38, :cond_23

    .line 2944
    const v38, 0x109009a

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .line 2947
    .end local v19           #layoutResource:I
    :cond_23
    and-int/lit16 v0, v13, 0x80

    move/from16 v38, v0

    if-eqz v38, :cond_25

    .line 2950
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_24

    .line 2951
    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .line 2952
    .restart local v29       #res:Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v38

    const v39, 0x10103cc

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2954
    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    .line 2961
    .end local v29           #res:Landroid/util/TypedValue;
    .restart local v19       #layoutResource:I
    :goto_b
    const/16 v38, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    goto/16 :goto_8

    .line 2957
    .end local v19           #layoutResource:I
    :cond_24
    const v38, 0x1090099

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto :goto_b

    .line 2962
    .end local v19           #layoutResource:I
    :cond_25
    and-int/lit8 v38, v13, 0x2

    if-nez v38, :cond_29

    .line 2965
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    move/from16 v38, v0

    if-eqz v38, :cond_26

    .line 2966
    new-instance v29, Landroid/util/TypedValue;

    invoke-direct/range {v29 .. v29}, Landroid/util/TypedValue;-><init>()V

    .line 2967
    .restart local v29       #res:Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v38

    const v39, 0x10103cd

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v29

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2969
    move-object/from16 v0, v29

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    .line 2970
    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .end local v19           #layoutResource:I
    .end local v29           #res:Landroid/util/TypedValue;
    :cond_26
    and-int/lit16 v0, v13, 0x100

    move/from16 v38, v0

    if-eqz v38, :cond_28

    .line 2972
    and-int/lit16 v0, v13, 0x200

    move/from16 v38, v0

    if-eqz v38, :cond_27

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->getActionBarOverlayResourceId(Landroid/content/Context;)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .line 2975
    .end local v19           #layoutResource:I
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/PhoneWindow$Injector;->getActionBarResourceId(Landroid/content/Context;)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .line 2980
    .end local v19           #layoutResource:I
    :cond_28
    const v38, 0x109009d

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .line 2984
    .end local v19           #layoutResource:I
    :cond_29
    and-int/lit16 v0, v13, 0x400

    move/from16 v38, v0

    if-eqz v38, :cond_2a

    .line 2986
    const v38, 0x109009c

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .line 2991
    .end local v19           #layoutResource:I
    :cond_2a
    const v38, 0x109009b

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getResource(I)I

    move-result v19

    .restart local v19       #layoutResource:I
    goto/16 :goto_8

    .line 3007
    .restart local v18       #in:Landroid/view/View;
    :cond_2b
    sget-object v38, Lcom/htc/R$styleable;->HtcFakescreen:[I

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 3010
    .local v6, attributeSet:Landroid/content/res/TypedArray;
    if-eqz v6, :cond_19

    .line 3015
    const/16 v38, 0x3

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    .line 3018
    const/16 v38, 0x4

    const/high16 v39, -0x8000

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    .line 3022
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2c

    const/16 v38, 0x2

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    if-nez v38, :cond_2c

    .line 3024
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    .line 3027
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2d

    .line 3028
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    .line 3029
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    .line 3032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v38, v0

    if-eqz v38, :cond_2d

    .line 3033
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 3035
    .local v30, resource:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2e

    const v37, 0x40a001d

    .line 3036
    .local v37, tboundID:I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_2f

    const v21, 0x40a001c

    .line 3037
    .local v21, lboundID:I
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_30

    const v28, 0x40a001e

    .line 3038
    .local v28, rboundID:I
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_31

    const v9, 0x40a001f

    .line 3040
    .local v9, bboundID:I
    :goto_f
    move-object/from16 v0, v30

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v36

    .line 3041
    .local v36, tbound:I
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 3042
    .local v20, lbound:I
    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v27

    .line 3043
    .local v27, rbound:I
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 3045
    .local v8, bbound:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v20

    move/from16 v2, v36

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 3048
    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "generateLayout: thumbnailDrawable:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "-"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    .end local v8           #bbound:I
    .end local v9           #bboundID:I
    .end local v20           #lbound:I
    .end local v21           #lboundID:I
    .end local v27           #rbound:I
    .end local v28           #rboundID:I
    .end local v30           #resource:Landroid/content/res/Resources;
    .end local v36           #tbound:I
    .end local v37           #tboundID:I
    :cond_2d
    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "generateLayout(): fakeheader:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " fakefooter:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " fakebackground:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " portrait:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3035
    .restart local v30       #resource:Landroid/content/res/Resources;
    :cond_2e
    const v37, 0x40a0021

    goto/16 :goto_c

    .line 3036
    .restart local v37       #tboundID:I
    :cond_2f
    const v21, 0x40a0020

    goto/16 :goto_d

    .line 3037
    .restart local v21       #lboundID:I
    :cond_30
    const v28, 0x40a0022

    goto/16 :goto_e

    .line 3038
    .restart local v28       #rboundID:I
    :cond_31
    const v9, 0x40a0023

    goto/16 :goto_f

    .line 3069
    .end local v6           #attributeSet:Landroid/content/res/TypedArray;
    .end local v21           #lboundID:I
    .end local v28           #rboundID:I
    .end local v30           #resource:Landroid/content/res/Resources;
    .end local v37           #tboundID:I
    .restart local v10       #contentParent:Landroid/view/ViewGroup;
    :cond_32
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v38, v0

    if-eqz v38, :cond_33

    .line 3070
    check-cast v18, Landroid/view/ViewGroup;

    .end local v18           #in:Landroid/view/View;
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->printViewTree(Landroid/view/ViewGroup;I)V

    goto/16 :goto_a

    .line 3072
    .restart local v18       #in:Landroid/view/View;
    :cond_33
    const-string v38, "PhoneWindow"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "LayoutInflater.inflate() = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 3082
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_35

    and-int/lit8 v38, v13, 0x20

    if-eqz v38, :cond_35

    .line 3084
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCircularProgressBar(Z)Landroid/widget/ProgressBar;

    move-result-object v26

    .line 3085
    .local v26, progress:Landroid/widget/ProgressBar;
    if-eqz v26, :cond_35

    .line 3086
    const/16 v38, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3096
    .end local v26           #progress:Landroid/widget/ProgressBar;
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContainer()Landroid/view/Window;

    move-result-object v38

    if-nez v38, :cond_3a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-nez v38, :cond_3a

    .line 3098
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 3099
    .local v12, drawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v38, v0

    if-eqz v38, :cond_36

    .line 3100
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3102
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3103
    const/4 v12, 0x0

    .line 3104
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v38, v0

    if-eqz v38, :cond_37

    .line 3105
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFrameResource:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 3107
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowFrame(Landroid/graphics/drawable/Drawable;)V

    .line 3113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v38, v0

    if-nez v38, :cond_38

    .line 3114
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTextColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 3117
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    if-eqz v38, :cond_39

    .line 3118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 3120
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setTitleColor(I)V

    .line 3126
    .end local v12           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3e

    .line 3127
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    .line 3129
    .restart local v30       #resource:Landroid/content/res/Resources;
    const/16 v17, 0x0

    .line 3131
    .local v17, frameBaseView:Landroid/widget/FrameLayout;
    const/16 v23, -0x1

    .line 3134
    .local v23, matchParent:I
    new-instance v17, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;

    .end local v17           #frameBaseView:Landroid/widget/FrameLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/android/internal/policy/impl/PhoneWindow$FrameBaseView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;)V

    .line 3135
    .restart local v17       #frameBaseView:Landroid/widget/FrameLayout;
    const/16 v38, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 3136
    new-instance v38, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v38

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;)V

    .line 3143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move/from16 v38, v0

    const/high16 v39, -0x8000

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_41

    .line 3144
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3f

    .line 3150
    const v38, -0xdadadb

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 3153
    const-string v38, "PhoneWindow"

    const-string v39, "generateLayout: recent_background: 0XF252525"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :goto_10
    const/high16 v16, -0x8000

    .line 3176
    .local v16, footerOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenHeaderEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3c

    .line 3177
    const-string v38, "common_app_bkg_top_src"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getSkinIdentifier(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v31

    .line 3182
    .local v31, resourceID:I
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v38, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3183
    .local v22, lparams:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v38, 0x30

    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3184
    const/16 v38, -0x1

    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3185
    const v38, 0x40a0003

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v38

    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-nez v38, :cond_3b

    .line 3190
    const/high16 v38, 0x409

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 3192
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 3197
    :cond_3b
    new-instance v5, Landroid/view/View;

    invoke-direct {v5, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3198
    .local v5, actionBarView:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3200
    if-eqz v31, :cond_42

    .line 3201
    move/from16 v0, v31

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3206
    :goto_11
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3210
    .end local v5           #actionBarView:Landroid/view/View;
    .end local v22           #lparams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v31           #resourceID:I
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenFooterEnable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_3e

    .line 3211
    if-gez v16, :cond_3d

    .line 3212
    const/high16 v38, 0x409

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 3218
    :cond_3d
    new-instance v22, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v38, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3219
    .restart local v22       #lparams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_43

    const/16 v38, -0x1

    :goto_12
    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 3220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_44

    .end local v16           #footerOffset:I
    :goto_13
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_45

    const/16 v38, 0x50

    :goto_14
    move/from16 v0, v38

    move-object/from16 v1, v22

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 3223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    move/from16 v38, v0

    if-eqz v38, :cond_46

    const-string v38, "common_app_bkg_down_src"

    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getSkinIdentifier(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v31

    .line 3227
    .restart local v31       #resourceID:I
    new-instance v15, Landroid/view/View;

    invoke-direct {v15, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3228
    .local v15, footerBarView:Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3230
    if-eqz v31, :cond_47

    .line 3231
    move/from16 v0, v31

    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3236
    :goto_16
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3241
    .end local v15           #footerBarView:Landroid/view/View;
    .end local v17           #frameBaseView:Landroid/widget/FrameLayout;
    .end local v22           #lparams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v23           #matchParent:I
    .end local v30           #resource:Landroid/content/res/Resources;
    .end local v31           #resourceID:I
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->finishChanging()V

    .line 3243
    return-object v10

    .line 3155
    .restart local v17       #frameBaseView:Landroid/widget/FrameLayout;
    .restart local v23       #matchParent:I
    .restart local v30       #resource:Landroid/content/res/Resources;
    :cond_3f
    const-string v38, "common_app_bkg"

    const-string v39, "drawable"

    const-string v40, "com.htc"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v31

    .line 3157
    .restart local v31       #resourceID:I
    if-eqz v31, :cond_40

    .line 3158
    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto/16 :goto_10

    .line 3160
    :cond_40
    const-string v38, "PhoneWindow"

    const-string v39, "common_app_bkg resource not found!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 3165
    .end local v31           #resourceID:I
    :cond_41
    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3166
    .local v7, backgroundView:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->fakescreenBackgroundColor:I

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3167
    new-instance v38, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v38

    move/from16 v1, v23

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3170
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_10

    .line 3203
    .end local v7           #backgroundView:Landroid/view/View;
    .restart local v5       #actionBarView:Landroid/view/View;
    .restart local v16       #footerOffset:I
    .restart local v22       #lparams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v31       #resourceID:I
    :cond_42
    const-string v38, "PhoneWindow"

    const-string v39, "common_app_bkg_top_src resource not found!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .end local v5           #actionBarView:Landroid/view/View;
    .end local v31           #resourceID:I
    :cond_43
    move/from16 v38, v16

    .line 3219
    goto/16 :goto_12

    .line 3220
    :cond_44
    const/16 v16, -0x1

    goto/16 :goto_13

    .line 3221
    .end local v16           #footerOffset:I
    :cond_45
    const/16 v38, 0x5

    goto/16 :goto_14

    .line 3223
    :cond_46
    const-string v38, "common_app_bkg_down_land_src"

    goto/16 :goto_15

    .line 3233
    .restart local v15       #footerBarView:Landroid/view/View;
    .restart local v31       #resourceID:I
    :cond_47
    const-string v38, "PhoneWindow"

    const-string v39, "common_app_bkg_down resource not found!"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method getActionBarView()Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1584
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v0, :cond_0

    .line 1665
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getVolumeControlStream()I
    .locals 1

    .prologue
    .line 3633
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    return v0
.end method

.method protected initializePanelContent(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 6
    .parameter "st"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1214
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1215
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    move v2, v3

    .line 1241
    :goto_0
    return v2

    .line 1219
    :cond_0
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_1

    move v2, v4

    .line 1220
    goto :goto_0

    .line 1223
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    if-nez v2, :cond_2

    .line 1224
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    .line 1227
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInListMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .local v1, menuView:Lcom/android/internal/view/menu/MenuView;
    :goto_1
    move-object v2, v1

    .line 1231
    check-cast v2, Landroid/view/View;

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 1233
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 1235
    invoke-interface {v1}, Lcom/android/internal/view/menu/MenuView;->getWindowAnimations()I

    move-result v0

    .line 1236
    .local v0, defaultAnimations:I
    if-eqz v0, :cond_3

    .line 1237
    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    :cond_3
    move v2, v3

    .line 1239
    goto :goto_0

    .line 1227
    .end local v0           #defaultAnimations:I
    .end local v1           #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$PanelMenuPresenterCallback;

    invoke-virtual {p1, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    goto :goto_1

    .restart local v1       #menuView:Lcom/android/internal/view/menu/MenuView;
    :cond_5
    move v2, v4

    .line 1241
    goto :goto_0
.end method

.method protected initializePanelDecor(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 3
    .parameter "st"

    .prologue
    .line 1168
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V

    iput-object v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 1169
    const/16 v0, 0x51

    iput v0, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->gravity:I

    .line 1170
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setStyle(Landroid/content/Context;)V

    .line 1172
    const/4 v0, 0x1

    return v0
.end method

.method protected initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z
    .locals 9
    .parameter "st"

    .prologue
    const/4 v8, 0x1

    .line 1136
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1139
    .local v0, context:Landroid/content/Context;
    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    if-eqz v6, :cond_0

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v6, :cond_1

    .line 1141
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1142
    .local v4, outValue:Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 1143
    .local v2, currentTheme:Landroid/content/res/Resources$Theme;
    const v6, 0x1010397

    invoke-virtual {v2, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1145
    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    .line 1147
    .local v5, targetThemeRes:I
    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 1148
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v0           #context:Landroid/content/Context;
    .local v1, context:Landroid/content/Context;
    move-object v0, v1

    .line 1152
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #currentTheme:Landroid/content/res/Resources$Theme;
    .end local v4           #outValue:Landroid/util/TypedValue;
    .end local v5           #targetThemeRes:I
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    new-instance v3, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v3, v0}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 1154
    .local v3, menu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {v3, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1155
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 1157
    return v8
.end method

.method public invalidatePanelMenu(I)V
    .locals 5
    .parameter "featureId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 839
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 840
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    const/4 v0, 0x0

    .line 841
    .local v0, savedActionViewStates:Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_1

    .line 842
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #savedActionViewStates:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 843
    .restart local v0       #savedActionViewStates:Landroid/os/Bundle;
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, v0}, Lcom/android/internal/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    .line 844
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 845
    iput-object v0, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 848
    :cond_0
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 849
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clear()V

    .line 851
    :cond_1
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 852
    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 855
    const/16 v2, 0x8

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_3

    .line 857
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 858
    if-eqz v1, :cond_3

    .line 859
    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 860
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 863
    :cond_3
    return-void
.end method

.method public isFloating()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3459
    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 3460
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected onActive()V
    .locals 0

    .prologue
    .line 1660
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 559
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_3

    .line 560
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 561
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_3

    .line 562
    iget-boolean v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v2, :cond_4

    .line 564
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 565
    .local v1, state:Landroid/os/Bundle;
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_0

    .line 566
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 568
    :cond_0
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_1

    .line 569
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 574
    :cond_1
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    .line 577
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 580
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_2

    .line 581
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/IconMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 583
    :cond_2
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v2, :cond_3

    .line 584
    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v1}, Lcom/android/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 594
    .end local v0           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    .end local v1           #state:Landroid/os/Bundle;
    :cond_3
    :goto_0
    return-void

    .line 590
    .restart local v0       #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->clearMenuViews(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)V

    goto :goto_0
.end method

.method protected onDrawableChanged(ILandroid/graphics/drawable/Drawable;I)V
    .locals 2
    .parameter "featureId"
    .parameter "drawable"
    .parameter "alpha"

    .prologue
    .line 1352
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1353
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getLeftIconView()Landroid/widget/ImageView;

    move-result-object v0

    .line 1360
    .local v0, view:Landroid/widget/ImageView;
    :goto_0
    if-eqz p2, :cond_2

    .line 1361
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1362
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1363
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1367
    .end local v0           #view:Landroid/widget/ImageView;
    :cond_0
    :goto_1
    return-void

    .line 1354
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1355
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getRightIconView()Landroid/widget/ImageView;

    move-result-object v0

    .restart local v0       #view:Landroid/widget/ImageView;
    goto :goto_0

    .line 1365
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onIntChanged(II)V
    .locals 2
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 1377
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1378
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateProgressBars(I)V

    .line 1385
    :cond_1
    :goto_0
    return-void

    .line 1379
    :cond_2
    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 1380
    const v1, 0x1020235

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1381
    .local v0, titleContainer:Landroid/widget/FrameLayout;
    if-eqz v0, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0
.end method

.method protected onKeyDown(IILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1537
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1542
    .local v0, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    sparse-switch p2, :sswitch_data_0

    .line 1571
    .end local p1
    :cond_0
    :goto_1
    return v1

    .line 1537
    .end local v0           #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    .restart local p1
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1550
    .restart local v0       #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v1, p3, v3}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    move v1, v2

    .line 1551
    goto :goto_1

    .line 1555
    :sswitch_1
    if-gez p1, :cond_2

    move p1, v1

    .end local p1
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z

    move v1, v2

    .line 1556
    goto :goto_1

    .line 1560
    .restart local p1
    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 1561
    if-ltz p1, :cond_0

    .line 1563
    if-eqz v0, :cond_3

    .line 1564
    invoke-virtual {v0, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_3
    move v1, v2

    .line 1566
    goto :goto_1

    .line 1542
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onKeyDownPanel(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "featureId"
    .parameter "event"

    .prologue
    .line 872
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 874
    .local v0, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 876
    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 878
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 879
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v2, :cond_0

    .line 880
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 884
    .end local v1           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onKeyUp(IILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1596
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 1598
    .local v0, dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :goto_0
    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 1604
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1655
    .end local p1
    :cond_1
    :goto_1
    return v2

    .line 1596
    .end local v0           #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1612
    .restart local v0       #dispatcher:Landroid/view/KeyEvent$DispatcherState;
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    invoke-virtual {v2, p3, v4}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    move v2, v3

    .line 1613
    goto :goto_1

    .line 1617
    :sswitch_1
    if-gez p1, :cond_3

    move p1, v2

    .end local p1
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUpPanel(ILandroid/view/KeyEvent;)V

    move v2, v3

    .line 1619
    goto :goto_1

    .line 1623
    .restart local p1
    :sswitch_2
    if-ltz p1, :cond_1

    .line 1624
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1625
    if-nez p1, :cond_4

    .line 1626
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1627
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v2, :cond_4

    .line 1630
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    move v2, v3

    .line 1631
    goto :goto_1

    .line 1634
    .end local v1           #st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    move v2, v3

    .line 1635
    goto :goto_1

    .line 1645
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1648
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1649
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->launchDefaultSearch()Z

    :cond_5
    move v2, v3

    .line 1651
    goto :goto_1

    .line 1604
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_3
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onKeyUpPanel(ILandroid/view/KeyEvent;)V
    .locals 7
    .parameter "featureId"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 894
    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    if-eqz v4, :cond_0

    .line 895
    iput v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I

    .line 897
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    const/4 v1, 0x0

    .line 902
    .local v1, playSoundEffect:Z
    invoke-direct {p0, p1, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v3

    .line 903
    .local v3, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez p1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 905
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 906
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->isOverflowMenuShowing()Z

    move-result v4

    if-nez v4, :cond_3

    .line 907
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 908
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    move-result v1

    .line 945
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 948
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_8

    .line 949
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 911
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v4}, Lcom/android/internal/widget/ActionBarView;->hideOverflowMenu()Z

    move-result v1

    goto :goto_1

    .line 915
    :cond_4
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-nez v4, :cond_5

    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    if-eqz v4, :cond_6

    .line 919
    :cond_5
    iget-boolean v1, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 922
    invoke-virtual {p0, v3, v5}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_1

    .line 924
    :cond_6
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v4, :cond_2

    .line 925
    const/4 v2, 0x1

    .line 926
    .local v2, show:Z
    iget-boolean v4, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v4, :cond_7

    .line 929
    iput-boolean v6, v3, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 930
    invoke-virtual {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    .line 933
    :cond_7
    if-eqz v2, :cond_2

    .line 935
    const v4, 0xc351

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 938
    invoke-direct {p0, v3, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    .line 940
    const/4 v1, 0x1

    goto :goto_1

    .line 951
    .end local v2           #show:Z
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_8
    const-string v4, "PhoneWindow"

    const-string v5, "Couldn\'t get audio manager"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1068
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1069
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->findMenuPanel(Landroid/view/Menu;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1070
    .local v1, panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_0

    .line 1071
    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v2

    .line 1074
    .end local v1           #panel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1078
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->reopenMenu(Z)V

    .line 1079
    return-void
.end method

.method onOptionsPanelRotationChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1191
    invoke-direct {p0, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1192
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-nez v1, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    move-object v0, v3

    .line 1196
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    :goto_1
    if-eqz v0, :cond_0

    .line 1197
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getOptionsPanelGravity()I

    move-result v3

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 1199
    .local v2, wm:Landroid/view/ViewManager;
    if-eqz v2, :cond_0

    .line 1200
    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-interface {v2, v3, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1194
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #wm:Landroid/view/ViewManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final openPanel(ILandroid/view/KeyEvent;)V
    .locals 1
    .parameter "featureId"
    .parameter "event"

    .prologue
    .line 611
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->showOverflowMenu()Z

    .line 619
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public final peekDecorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .locals 1
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performPanelIdentifierAction(III)Z
    .locals 5
    .parameter "featureId"
    .parameter "id"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 1036
    invoke-direct {p0, p1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 1037
    .local v1, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x52

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return v0

    .line 1040
    :cond_1
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2, p2, p3}, Lcom/android/internal/view/menu/MenuBuilder;->performIdentifierAction(II)Z

    move-result v0

    .line 1047
    .local v0, res:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-nez v2, :cond_0

    .line 1048
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    goto :goto_0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .locals 1
    .parameter "featureId"
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 1002
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public final preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "st"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 461
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v4

    .line 466
    :cond_1
    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    if-eqz v2, :cond_2

    move v4, v3

    .line 467
    goto :goto_0

    .line 470
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    if-eq v2, p1, :cond_3

    .line 472
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 475
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 477
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_4

    .line 478
    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    invoke-interface {v0, v2}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 481
    :cond_4
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v2, :cond_f

    .line 483
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    if-eqz v2, :cond_b

    .line 484
    :cond_5
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_6

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->initializePanelMenu(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 490
    :cond_6
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_8

    .line 491
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    if-nez v2, :cond_7

    .line 492
    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-direct {v2, p0, v7}, Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    .line 494
    :cond_7
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 501
    :cond_8
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 502
    if-eqz v0, :cond_9

    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v2, v5}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 504
    :cond_9
    invoke-virtual {p1, v7}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 506
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    goto :goto_0

    .line 514
    :cond_a
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshMenuContent:Z

    .line 521
    :cond_b
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 525
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    if-eqz v2, :cond_c

    .line 526
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    invoke-virtual {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    .line 527
    iput-object v7, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;

    .line 530
    :cond_c
    iget v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    iget-object v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, v2, v5, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v2, :cond_d

    .line 534
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionMenuPresenterCallback:Lcom/android/internal/policy/impl/PhoneWindow$ActionMenuPresenterCallback;

    invoke-virtual {v2, v7, v3}, Lcom/android/internal/widget/ActionBarView;->setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 536
    :cond_d
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto/16 :goto_0

    .line 541
    :cond_e
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    :goto_1
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 543
    .local v1, kmap:Landroid/view/KeyCharacterMap;
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_11

    move v2, v3

    :goto_2
    iput-boolean v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    .line 544
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-boolean v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->qwertyMode:Z

    invoke-virtual {v2, v5}, Lcom/android/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 545
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 549
    .end local v1           #kmap:Landroid/view/KeyCharacterMap;
    :cond_f
    iput-boolean v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 550
    iput-boolean v4, p1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 551
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move v4, v3

    .line 553
    goto/16 :goto_0

    .line 541
    :cond_10
    const/4 v2, -0x1

    goto :goto_1

    .restart local v1       #kmap:Landroid/view/KeyCharacterMap;
    :cond_11
    move v2, v4

    .line 543
    goto :goto_2
.end method

.method public requestFeature(I)Z
    .locals 4
    .parameter "featureId"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 324
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "requestFeature() must be called before adding content"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v0

    .line 327
    .local v0, features:I
    const/16 v1, 0x41

    if-eq v0, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 330
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_1
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2

    if-eq p1, v2, :cond_2

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    .line 336
    new-instance v1, Landroid/util/AndroidRuntimeException;

    const-string v2, "You cannot combine custom titles with other title features"

    invoke-direct {v1, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_2
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    if-ne p1, v3, :cond_3

    .line 339
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    .line 341
    :cond_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 343
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->removeFeature(I)V

    .line 345
    :cond_4
    invoke-super {p0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    .line 1724
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    const-string v5, "android:views"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 1730
    .local v4, savedStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_2

    .line 1731
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 1735
    :cond_2
    const-string v5, "android:focusedViewId"

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1736
    .local v1, focusedViewId:I
    if-eq v1, v6, :cond_3

    .line 1737
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1738
    .local v2, needsFocus:Landroid/view/View;
    if-eqz v2, :cond_5

    .line 1739
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1748
    .end local v2           #needsFocus:Landroid/view/View;
    :cond_3
    :goto_1
    const-string v5, "android:Panels"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    .line 1749
    .local v3, panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v3, :cond_4

    .line 1750
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->restorePanelState(Landroid/util/SparseArray;)V

    .line 1753
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_0

    .line 1754
    const-string v5, "android:ActionBar"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1756
    .local v0, actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_6

    .line 1757
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_0

    .line 1741
    .end local v0           #actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v3           #panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2       #needsFocus:Landroid/view/View;
    :cond_5
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Previously focused view reported id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " during save, but can\'t be found during restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1759
    .end local v2           #needsFocus:Landroid/view/View;
    .restart local v0       #actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v3       #panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :cond_6
    const-string v5, "PhoneWindow"

    const-string v6, "Missing saved instance states for action bar views! State will not be restored."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 1683
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1684
    .local v2, outState:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    .line 1718
    :cond_0
    :goto_0
    return-object v2

    .line 1688
    :cond_1
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 1689
    .local v4, states:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1690
    const-string v5, "android:views"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1693
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1694
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1695
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 1696
    const-string v5, "android:focusedViewId"

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1706
    :cond_2
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 1707
    .local v3, panelStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->savePanelState(Landroid/util/SparseArray;)V

    .line 1708
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1709
    const-string v5, "android:Panels"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1712
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v5, :cond_0

    .line 1713
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1714
    .local v0, actionBarStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/ActionBarView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1715
    const-string v5, "android:ActionBar"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 4063
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4064
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 4067
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 4068
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    if-eqz v0, :cond_1

    .line 1253
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundResource:I

    .line 1254
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 1255
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWindowBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1259
    :cond_1
    return-void
.end method

.method public final setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 3447
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 3448
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->child:Landroid/graphics/drawable/Drawable;

    .line 3449
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 3450
    return-void
.end method

.method public final setChildInt(II)V
    .locals 1
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 3454
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 3455
    return-void
.end method

.method public final setContainer(Landroid/view/Window;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/view/Window;->setContainer(Landroid/view/Window;)V

    .line 319
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 360
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 367
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 370
    :cond_0
    return-void

    .line 363
    .end local v0           #cb:Landroid/view/Window$Callback;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, -0x1

    .line 374
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 380
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->installDecor()V

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 386
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 387
    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 389
    :cond_0
    return-void

    .line 382
    .end local v0           #cb:Landroid/view/Window$Callback;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0
.end method

.method protected final setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    .line 1312
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1313
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1314
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->def:Landroid/graphics/drawable/Drawable;

    .line 1315
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1317
    :cond_0
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "featureId"
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    .line 1293
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1294
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1295
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1296
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    if-eq v1, p2, :cond_0

    .line 1297
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1298
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1300
    :cond_0
    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .locals 2
    .parameter "featureId"
    .parameter "alpha"

    .prologue
    .line 1304
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1305
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    if-eq v1, p2, :cond_0

    .line 1306
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->alpha:I

    .line 1307
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1309
    :cond_0
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 3
    .parameter "featureId"
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 1263
    if-eqz p2, :cond_1

    .line 1264
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1265
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    if-eq v1, p2, :cond_0

    .line 1266
    iput p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1267
    iput-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1268
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1269
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1274
    .end local v0           #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 3
    .parameter "featureId"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1278
    if-eqz p2, :cond_2

    .line 1279
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1280
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1281
    :cond_0
    iput v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->resid:I

    .line 1282
    iput-object p2, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->uri:Landroid/net/Uri;

    .line 1283
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->loadImageURI(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;->local:Landroid/graphics/drawable/Drawable;

    .line 1284
    invoke-direct {p0, p1, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1289
    .end local v0           #st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    :cond_1
    :goto_0
    return-void

    .line 1287
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setFeatureFromAttrs(ILandroid/content/res/TypedArray;II)V
    .locals 4
    .parameter "featureId"
    .parameter "attrs"
    .parameter "drawableAttr"
    .parameter "alphaAttr"

    .prologue
    .line 2758
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2759
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 2760
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->requestFeature(I)Z

    .line 2761
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDefaultDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 2763
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getFeatures()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 2764
    const/4 v2, -0x1

    invoke-virtual {p2, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2765
    .local v0, alpha:I
    if-ltz v0, :cond_1

    .line 2766
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->setFeatureDrawableAlpha(II)V

    .line 2769
    .end local v0           #alpha:I
    :cond_1
    return-void
.end method

.method public final setFeatureInt(II)V
    .locals 1
    .parameter "featureId"
    .parameter "value"

    .prologue
    .line 1323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->updateInt(IIZ)V

    .line 1324
    return-void
.end method

.method public setSimpleDecorView(ZLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "enable"
    .parameter "thumbnail"

    .prologue
    .line 4203
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->simpleLayout:Z

    .line 4205
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4206
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4207
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 4208
    .local v3, wPixelsize:I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4210
    .local v1, hPixelsize:I
    if-ge v3, v1, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isPortrait:Z

    .line 4211
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.systemui"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    .line 4214
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->isRecentAP:Z

    if-eqz v4, :cond_0

    .line 4215
    if-eqz p2, :cond_2

    .line 4216
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 4220
    :goto_1
    const-string v4, "PhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateLayout: thumbnailDrawable:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4222
    :cond_0
    return-void

    .line 4210
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 4218
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow;->thumbnailDrawable:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitle:Ljava/lang/CharSequence;

    .line 441
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mActionBar:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 1
    .parameter "textColor"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 448
    :cond_0
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTitleColor:I

    .line 449
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .parameter "uiOptions"

    .prologue
    .line 350
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 351
    return-void
.end method

.method public setUiOptions(II)V
    .locals 2
    .parameter "uiOptions"
    .parameter "mask"

    .prologue
    .line 355
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mUiOptions:I

    .line 356
    return-void
.end method

.method public setVolumeControlStream(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 3628
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I

    .line 3629
    return-void
.end method

.method public setWindowCrop(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 4296
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    if-nez v1, :cond_1

    .line 4302
    :cond_0
    :goto_0
    return-void

    .line 4298
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 4299
    .local v0, wm:Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    .line 4301
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/view/WindowManager;->setWindowCrop(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 415
    return-void
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .parameter "get"

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mDecor:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setFocusable(Z)V

    .line 1488
    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 411
    return-void
.end method

.method public final togglePanel(ILandroid/view/KeyEvent;)V
    .locals 3
    .parameter "featureId"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 829
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v0

    .line 830
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v1, :cond_0

    .line 831
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Z)V

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->openPanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method protected final updateDrawable(IZ)V
    .locals 2
    .parameter "featureId"
    .parameter "fromActive"

    .prologue
    .line 1336
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getDrawableState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;

    move-result-object v0

    .line 1337
    .local v0, st:Lcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;
    if-eqz v0, :cond_0

    .line 1338
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/policy/impl/PhoneWindow;->updateDrawable(ILcom/android/internal/policy/impl/PhoneWindow$DrawableFeatureState;Z)V

    .line 1340
    :cond_0
    return-void
.end method
