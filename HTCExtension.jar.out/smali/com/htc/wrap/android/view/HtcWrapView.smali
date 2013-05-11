.class public Lcom/htc/wrap/android/view/HtcWrapView;
.super Landroid/view/View;
.source "HtcWrapView.java"


# static fields
.field private static HTC_DEVICE:Ljava/lang/Boolean;

.field public static final PRESSED_STATE_SET:[I


# instance fields
.field public mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/view/HtcWrapView;->HTC_DEVICE:Ljava/lang/Boolean;

    .line 411
    sget-object v0, Landroid/view/View;->PRESSED_STATE_SET:[I

    sput-object v0, Lcom/htc/wrap/android/view/HtcWrapView;->PRESSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public static dispatchPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public static getCornerRadius(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public static isBottomCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public static isPenAsTouch(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public static isRoundedCornerEnabled(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public static isTopCornerRounded(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public static onPenEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public static setCornerAntiAliased(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "aa"

    .prologue
    .line 332
    return-void
.end method

.method public static setCornerRadius(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "radius"

    .prologue
    .line 299
    return-void
.end method

.method public static setCornerStrokeColor(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "color"

    .prologue
    .line 323
    return-void
.end method

.method public static setCornerStrokeWidth(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "width"

    .prologue
    .line 314
    return-void
.end method

.method public static setDispatchPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "methodName"

    .prologue
    .line 365
    return-void
.end method

.method public static setOnPenEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "methodName"

    .prologue
    .line 375
    return-void
.end method

.method public static setOnPenListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "view"
    .parameter "l"

    .prologue
    .line 345
    return-void
.end method

.method public static setPenAsTouch(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "penAsTouch"

    .prologue
    .line 396
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;Z)V
    .locals 0
    .parameter "view"
    .parameter "roundCorner"

    .prologue
    .line 261
    return-void
.end method

.method public static setRoundedCornerEnabled(Landroid/view/View;ZZ)V
    .locals 0
    .parameter "view"
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 265
    return-void
.end method


# virtual methods
.method public dispatchPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public isBottomCornerRounded()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isPenAsTouch()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public isRoundedCornerEnabled()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isTopCornerRounded()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public setCornerAntiAliased(Z)V
    .locals 0
    .parameter "aa"

    .prologue
    .line 160
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 97
    return-void
.end method

.method public setCornerStrokeColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 144
    return-void
.end method

.method public setCornerStrokeWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 124
    return-void
.end method

.method public setDispatchPenEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 206
    return-void
.end method

.method public setOnPenEvent(Ljava/lang/String;)V
    .locals 0
    .parameter "methodName"

    .prologue
    .line 216
    return-void
.end method

.method public setOnPenListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 178
    return-void
.end method

.method public setPenAsTouch(Z)V
    .locals 0
    .parameter "penAsTouch"

    .prologue
    .line 243
    return-void
.end method

.method public setRoundedCornerEnabled(Z)V
    .locals 0
    .parameter "roundCorner"

    .prologue
    .line 37
    return-void
.end method

.method public setRoundedCornerEnabled(ZZ)V
    .locals 0
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 52
    return-void
.end method
