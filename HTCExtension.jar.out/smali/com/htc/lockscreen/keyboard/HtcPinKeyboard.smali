.class public Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;
.super Landroid/widget/LinearLayout;
.source "HtcPinKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DISPATCH_KEY:I = 0x7

.field private static final DISPATCH_KEY_FROM_IME:I = 0xb

#the value of this static final field might be set in the static constructor
.field public static final KEYCODE_CANCEL:I = 0x0

.field private static final LOCKSCREEN_PACKAGE:Ljava/lang/String; = "com.htc.lockscreen"

.field private static final TAG:Ljava/lang/String; = "HtcPinKeyboard"


# instance fields
.field private mDel:Landroid/view/View;

.field private mExtraButtonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyMapCode:[I

.field private mNumberButtons:[Landroid/view/View;

.field private mOk:Landroid/view/View;

.field private mOutResource:Landroid/graphics/drawable/Drawable;

.field private mPhoneOutResource:Landroid/graphics/drawable/Drawable;

.field private mPhoneouterRes:Ljava/lang/String;

.field private mPressResource:Landroid/graphics/drawable/Drawable;

.field private mResPackageName:Ljava/lang/String;

.field private mResetResource:Landroid/graphics/drawable/Drawable;

.field private mTargetView:Landroid/view/View;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->KEYCODE_CANCEL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const-string v0, "com.htc.lockscreen"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResPackageName:Ljava/lang/String;

    .line 52
    const-string v0, "phone_btn_outer"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneouterRes:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    .line 73
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 74
    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    .line 76
    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const-string v0, "com.htc.lockscreen"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResPackageName:Ljava/lang/String;

    .line 52
    const-string v0, "phone_btn_outer"

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneouterRes:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    .line 81
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    .line 82
    invoke-direct {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->initView()V

    .line 84
    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 5
    .parameter "res"
    .parameter "resName"

    .prologue
    .line 507
    const-string v2, "HtcPinKeyboard"

    const-string v3, "getIdFromPackage"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v1, 0x0

    .line 511
    .local v1, id:I
    :try_start_0
    const-string v2, "id"

    const-string v3, "com.htc.lockscreen"

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 515
    :goto_0
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcPinKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIdFromPackage e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLockscreenPackageRes(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 6
    .parameter "context"

    .prologue
    .line 490
    const-string v3, "HtcPinKeyboard"

    const-string v4, "getIdFromPackage"

    invoke-static {v3, v4}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v2, 0x0

    .line 494
    .local v2, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 495
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.htc.lockscreen"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 500
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcPinKeyboard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIdFromPackage e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleBackspace()V
    .locals 1

    .prologue
    .line 392
    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    .line 393
    return-void
.end method

.method private handleCharacter(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendKeyEventsToTarget(I)V

    .line 397
    return-void
.end method

.method private initView()V
    .locals 10

    .prologue
    .line 88
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    const-string v8, "pin_keyboard"

    invoke-static {v7, v8}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    .line 89
    .local v6, view:Landroid/view/View;
    if-eqz v6, :cond_0

    .line 90
    invoke-virtual {p0, v6}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->addView(Landroid/view/View;)V

    .line 97
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getLockscreenPackageRes(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v4

    .line 98
    .local v4, res:Landroid/content/res/Resources;
    if-nez v4, :cond_1

    .line 99
    const-string v7, "HtcPinKeyboard"

    const-string v8, "initView not res"

    invoke-static {v7, v8}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v7, "HtcPinKeyboard"

    const-string v8, "initView not pin keyboard layout"

    invoke-static {v7, v8}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_1
    const/16 v7, 0xa

    :try_start_0
    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    const-string v9, "zero"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "one"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "two"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "three"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "four"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-string v9, "five"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "six"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-string v9, "seven"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "eight"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-string v9, "nine"

    invoke-static {v4, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aput-object v9, v7, v8

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    .line 127
    const-string v7, "htc_pin_asset_outer"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 128
    const-string v7, "htc_pin_asset_pressed"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    .line 129
    const-string v7, "htc_pin_asset_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneouterRes:Ljava/lang/String;

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResPackageName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/htc/lockscreen/internal/LSUtil;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    .line 132
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 134
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v7, v7

    if-ge v2, v7, :cond_5

    .line 135
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v7, v7, v2

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v7, v7, v2

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v7, v7, v2

    instance-of v7, v7, Lcom/htc/widget/HtcRimButton;

    if-eqz v7, :cond_3

    .line 138
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v5, v7, v2

    check-cast v5, Lcom/htc/widget/HtcRimButton;

    .line 140
    .local v5, rim:Lcom/htc/widget/HtcRimButton;
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 141
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 134
    .end local v5           #rim:Lcom/htc/widget/HtcRimButton;
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 148
    .restart local v5       #rim:Lcom/htc/widget/HtcRimButton;
    :cond_4
    const-string v7, "HtcPinKeyboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initView: error - mOutResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPressResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mResetResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 233
    .end local v2           #i:I
    .end local v5           #rim:Lcom/htc/widget/HtcRimButton;
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "HtcPinKeyboard"

    const-string v8, "initView ex"

    invoke-static {v7, v8, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 153
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #i:I
    :cond_5
    :try_start_1
    const-string v7, "ok"

    invoke-static {v4, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    .line 155
    const-string v7, "htc_pin_asset_outer"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 156
    const-string v7, "htc_pin_asset_pressed"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    .line 157
    const-string v7, "htc_pin_asset_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 158
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 159
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 161
    :cond_6
    const-string v7, "simlock_ok_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 162
    const-string v7, "simlock_ok_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 165
    :cond_7
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    instance-of v7, v7, Lcom/htc/widget/HtcRimButton;

    if-eqz v7, :cond_8

    .line 166
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    check-cast v5, Lcom/htc/widget/HtcRimButton;

    .line 168
    .restart local v5       #rim:Lcom/htc/widget/HtcRimButton;
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    .line 169
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/widget/HtcRimButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 180
    .end local v5           #rim:Lcom/htc/widget/HtcRimButton;
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    const-string v7, "cancel"

    invoke-static {v4, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, cancel:Landroid/view/View;
    if-eqz v0, :cond_9

    .line 194
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_9
    const-string v7, "backspace"

    invoke-static {v4, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getIdFromRes(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    .line 199
    const-string v7, "htc_pin_asset_outer"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 200
    const-string v7, "htc_pin_asset_pressed"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    .line 201
    const-string v7, "htc_pin_asset_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_a

    .line 203
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPhoneOutResource:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    .line 205
    :cond_a
    const-string v7, "simlock_cancel_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 206
    const-string v7, "simlock_cancel_rest"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_b
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    instance-of v7, v7, Lcom/htc/widget/HtcRimImageButton;

    if-eqz v7, :cond_d

    .line 210
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    check-cast v5, Lcom/htc/widget/HtcRimImageButton;

    .line 212
    .local v5, rim:Lcom/htc/widget/HtcRimImageButton;
    const-string v7, "icon_btn_backspace_dark"

    invoke-virtual {p0, v7}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 213
    .local v3, iconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_c

    .line 214
    invoke-virtual {v5, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_c
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    .line 218
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v8, v9}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    .end local v3           #iconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v5           #rim:Lcom/htc/widget/HtcRimImageButton;
    :cond_d
    :goto_4
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    .line 176
    .end local v0           #cancel:Landroid/view/View;
    .local v5, rim:Lcom/htc/widget/HtcRimButton;
    :cond_e
    const-string v7, "HtcPinKeyboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initView: error - mOutResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPressResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mResetResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 225
    .restart local v0       #cancel:Landroid/view/View;
    .restart local v3       #iconDrawable:Landroid/graphics/drawable/Drawable;
    .local v5, rim:Lcom/htc/widget/HtcRimImageButton;
    :cond_f
    const-string v7, "HtcPinKeyboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initView: error - mOutResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOutResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mPressResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mPressResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mResetResource = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mResetResource:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static retrieveLayoutFromLockScreen(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 522
    const-string v6, "HtcPinKeyboard"

    const-string v7, "retrieveLayoutFromLockScreen"

    invoke-static {v6, v7}, Lcom/htc/lockscreen/LSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v5, 0x0

    .line 527
    .local v5, view:Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 528
    .local v3, pm:Landroid/content/pm/PackageManager;
    const-string v6, "com.htc.lockscreen"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 529
    .local v4, res:Landroid/content/res/Resources;
    const-string v6, "com.htc.lockscreen"

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 531
    .local v2, inflater:Landroid/view/LayoutInflater;
    const-string v6, "layout"

    const-string v7, "com.htc.lockscreen"

    invoke-virtual {v4, p1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 532
    .local v1, id:I
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 537
    .end local v1           #id:I
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v5

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "HtcPinKeyboard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveLayoutFromLockScreen e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendKeyEventsToTarget(I)V
    .locals 10
    .parameter "character"

    .prologue
    .line 336
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 337
    const-string v6, "HtcPinKeyboard"

    const-string v7, "sendKeyEventsToTarget no target"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 341
    .local v3, handler:Landroid/os/Handler;
    if-nez v3, :cond_2

    .line 342
    const-string v6, "HtcPinKeyboard"

    const-string v7, "sendKeyEventsToTarget no target handler"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_2
    iget-object v6, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v5

    .line 346
    .local v5, viewRootImpl:Landroid/view/ViewRootImpl;
    if-nez v5, :cond_3

    .line 347
    const-string v6, "HtcPinKeyboard"

    const-string v7, "sendKeyEventsToTarget no viewRootImpl"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_3
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [C

    const/4 v8, 0x0

    int-to-char v9, p1

    aput-char v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v2

    .line 352
    .local v2, events:[Landroid/view/KeyEvent;
    if-eqz v2, :cond_0

    .line 353
    array-length v0, v2

    .line 354
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 355
    aget-object v1, v2, v4

    .line 356
    .local v1, event:Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x2

    or-int/lit8 v6, v6, 0x4

    invoke-static {v1, v6}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 358
    invoke-virtual {v5, v1}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;)V

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addKey(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "code"

    .prologue
    .line 465
    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    monitor-exit v1

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRimDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "resName"

    .prologue
    .line 243
    const-string v0, "com.htc"

    .line 244
    .local v0, COMMON_RES:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 245
    .local v1, context:Landroid/content/Context;
    const-string v2, "com.htc"

    invoke-static {v1, v2, p1}, Lcom/htc/lockscreen/internal/LSUtil;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public handleKeyDown()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 444
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 406
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    if-ne p1, v4, :cond_0

    .line 407
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    .line 433
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mDel:Landroid/view/View;

    if-ne p1, v4, :cond_1

    .line 410
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 414
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 415
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mNumberButtons:[Landroid/view/View;

    aget-object v4, v4, v1

    if-ne p1, v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mKeyMapCode:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleCharacter(I)V

    goto :goto_0

    .line 414
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    :cond_3
    iget-object v5, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v5

    .line 421
    :try_start_0
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 422
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 423
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 424
    .local v0, extraView:Landroid/view/View;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #extraView:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 426
    .restart local v0       #extraView:Landroid/view/View;
    if-ne v0, p1, :cond_4

    .line 427
    iget-object v4, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->sendDownUpKeyEvents(I)V

    .line 428
    monitor-exit v5

    goto :goto_0

    .line 431
    .end local v0           #extraView:Landroid/view/View;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .end local v3           #keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #extraView:Landroid/view/View;
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    .restart local v3       #keySet:Ljava/util/Set;,"Ljava/util/Set<Landroid/view/View;>;"
    :cond_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->handleKeyDown()V

    .line 456
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeKey(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 477
    iget-object v1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    monitor-enter v1

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mExtraButtonMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    monitor-exit v1

    .line 481
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 14
    .parameter "keyEventCode"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 371
    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 375
    .local v1, eventTime:J
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    .line 376
    .local v12, handler:Landroid/os/Handler;
    if-nez v12, :cond_1

    .line 377
    const-string v0, "HtcPinKeyboard"

    const-string v3, "sendDownUpKeyEvents no target handler"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v13

    .line 381
    .local v13, viewRootImpl:Landroid/view/ViewRootImpl;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v13, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    .line 385
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-virtual {v13, v0}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public setButtomBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .parameter "view"
    .parameter "outer"
    .parameter "press"
    .parameter "bg"

    .prologue
    .line 253
    const-string v0, "com.htc.widget.HtcRimButton"

    .line 254
    .local v0, CLASS_NAME:Ljava/lang/String;
    const-string v1, "setButtonBackgroundDrawable"

    .line 257
    .local v1, METHOD:Ljava/lang/String;
    const/4 v3, 0x0

    .line 258
    .local v3, c:Ljava/lang/Class;
    :try_start_0
    const-string v7, "com.htc.widget.HtcRimButton"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 259
    if-eqz v3, :cond_0

    .line 260
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 261
    const/4 v7, 0x3

    new-array v6, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Landroid/graphics/drawable/Drawable;

    aput-object v8, v6, v7

    .line 262
    .local v6, paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const-string v7, "setButtonBackgroundDrawable"

    invoke-virtual {v3, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 263
    .local v5, m:Ljava/lang/reflect/Method;
    const/4 v7, 0x3

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v2, v7

    const/4 v7, 0x1

    aput-object p3, v2, v7

    const/4 v7, 0x2

    aput-object p4, v2, v7

    .line 264
    .local v2, args:[Ljava/lang/Object;
    iget-object v7, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mOk:Landroid/view/View;

    invoke-virtual {v5, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .end local v2           #args:[Ljava/lang/Object;
    .end local v5           #m:Ljava/lang/reflect/Method;
    .end local v6           #paramTypes:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v4

    .line 269
    .local v4, e:Ljava/lang/ClassNotFoundException;
    const-string v7, "HtcPinKeyboard"

    const-string v8, "setButtomBackground ex"

    invoke-static {v7, v8, v4}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 271
    .end local v4           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 272
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "HtcPinKeyboard"

    const-string v8, "setButtomBackground ex"

    invoke-static {v7, v8, v4}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mTargetView:Landroid/view/View;

    .line 278
    return-void
.end method

.method public setVibrate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v1, 0x0

    .line 283
    .local v1, vibration:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 289
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibrate(Z)V

    .line 290
    return-void

    :cond_0
    move v1, v2

    .line 283
    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HtcPinKeyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVibrate e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/LSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVibrate(Z)V
    .locals 1
    .parameter "bVibra"

    .prologue
    .line 293
    if-eqz p1, :cond_0

    const v0, 0x1070022

    .line 295
    .local v0, vibrateResId:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->setVibratePattern(I)V

    .line 296
    return-void

    .line 293
    .end local v0           #vibrateResId:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVibratePattern(I)V
    .locals 6
    .parameter "id"

    .prologue
    .line 303
    const/4 v2, 0x0

    .line 305
    .local v2, tmpArray:[I
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 311
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 312
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 319
    :cond_1
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    if-eqz p1, :cond_0

    .line 308
    const-string v3, "HtcPinKeyboard"

    const-string v4, "Vibrate pattern missing"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 315
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_2
    array-length v3, v2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 316
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 317
    iget-object v3, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setVibratePattern([J)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/lockscreen/keyboard/HtcPinKeyboard;->mVibratePattern:[J

    .line 333
    return-void
.end method
