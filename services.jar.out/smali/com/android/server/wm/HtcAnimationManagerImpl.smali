.class Lcom/android/server/wm/HtcAnimationManagerImpl;
.super Ljava/lang/Object;
.source "HtcAnimationManagerImpl.java"

# interfaces
.implements Lcom/android/server/wm/HtcAnimationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;,
        Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;
    }
.end annotation


# instance fields
.field final DELTA_CONTINUOUS_ANIM:I

.field final FOR_CONTENTZOOM_AREA:Z

.field final FOR_ZOOM_POINT:Z

.field final OOBE_LANGUGE_SETUP:Ljava/lang/String;

.field final OOBE_PACKAGE_NAME:Ljava/lang/String;

.field mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

.field private mAnimatingWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mExcludeFromRecent:Z

.field mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field private mIsClearingCurrentAnim:Z

.field mIsHomeKeyPressed:Z

.field mIsMeetContinuousTrans:Z

.field mIsOpen:Z

.field mIsOverrideAppTranAnim:Z

.field mIsRecentAppInvolve:Z

.field mIsRosieInvolve:Z

.field mLastAnimMillis:F

.field mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mOverrideAppTranAnimType:I

.field mOverrideIsOpen:I

.field mOverrideTouchPoint:Landroid/graphics/Point;

.field mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

.field mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

.field mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSetAppTranAnimDuration:I

.field mSetAppTranAnimRate:I

.field mTouchPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    .line 41
    iput-boolean v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsMeetContinuousTrans:Z

    .line 42
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mLastAnimMillis:F

    .line 43
    const-string v0, "cont_anim_criteria"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DELTA_CONTINUOUS_ANIM:I

    .line 47
    iput-boolean v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsHomeKeyPressed:Z

    .line 50
    new-instance v0, Lcom/htc/view/animation/HtcGlTransAnimFactory;

    invoke-direct {v0}, Lcom/htc/view/animation/HtcGlTransAnimFactory;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    .line 54
    iput-boolean v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRosieInvolve:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRecentAppInvolve:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimDuration:I

    .line 67
    iput v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    .line 82
    const-string v0, "for_contentzoom_area"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->FOR_CONTENTZOOM_AREA:Z

    .line 83
    const-string v0, "for_zoom_point"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->FOR_ZOOM_POINT:Z

    .line 87
    const-string v0, "com.htc.android.htcsetupwizard"

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->OOBE_PACKAGE_NAME:Ljava/lang/String;

    .line 88
    const-string v0, "com.android.settings.LocalePickerSetupWizard"

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->OOBE_LANGUGE_SETUP:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mExcludeFromRecent:Z

    .line 97
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "HtcGlAnimation"

    const-string v1, "HtcGlAnimManagerImpl is created !!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    iput-object p2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private checkContinuousTrans()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float v1, v2

    .line 259
    .local v1, time:F
    iget v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mLastAnimMillis:F

    sub-float v0, v1, v2

    .line 261
    .local v0, delta:F
    iget v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mLastAnimMillis:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DELTA_CONTINUOUS_ANIM:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 262
    iput-boolean v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsMeetContinuousTrans:Z

    .line 263
    iput-boolean v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    .line 265
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v2, :cond_0

    .line 266
    const-string v2, "HtcGlAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "meet continuous trans anim, delta time= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (msec) with criteria= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DELTA_CONTINUOUS_ANIM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iput v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mLastAnimMillis:F

    .line 272
    return-void
.end method

.method private debugApiIsWorking(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 9
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    .line 1086
    const-string v6, "HtcGlAnimation"

    const-string v7, "==== debug API ===="

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    move-object v0, p1

    .line 1090
    .local v0, animObj:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "anim name= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transit type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getTransitType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1150
    :goto_0
    const-string v6, "HtcGlAnimation"

    const-string v7, "==== debug API end ===="

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void

    :pswitch_0
    move-object v1, v0

    .line 1099
    check-cast v1, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .line 1101
    .local v1, animObj2:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    :try_start_0
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "point="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1103
    :catch_0
    move-exception v5

    .line 1104
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #animObj2:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_1
    move-object v2, v0

    .line 1109
    check-cast v2, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .line 1111
    .local v2, animObj3:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    :try_start_1
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "footer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1117
    :catch_1
    move-exception v5

    .line 1118
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #animObj3:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_2
    move-object v3, v0

    .line 1123
    check-cast v3, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .line 1125
    .local v3, animObj4:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    :try_start_2
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "footer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 1131
    :catch_2
    move-exception v5

    .line 1132
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3           #animObj4:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    .end local v5           #e:Ljava/lang/NullPointerException;
    :pswitch_3
    move-object v4, v0

    .line 1137
    check-cast v4, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .line 1139
    .local v4, animObj5:Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
    :try_start_3
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1143
    :catch_3
    move-exception v5

    .line 1144
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v6, "HtcGlAnimation"

    const-string v7, "null pointer exception"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1096
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private debugTransitType(I)V
    .locals 2
    .parameter "transit"

    .prologue
    .line 1154
    sparse-switch p1, :sswitch_data_0

    .line 1180
    :goto_0
    return-void

    .line 1156
    :sswitch_0
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_ACTIVITY_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    :sswitch_1
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_OPEN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1164
    :sswitch_2
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_TO_FRONT"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1168
    :sswitch_3
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_ACTIVITY_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1172
    :sswitch_4
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_CLOSE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1176
    :sswitch_5
    const-string v0, "HtcGlAnimation"

    const-string v1, "TRANSIT_TASK_TO_BACK"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1154
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_1
        0x100a -> :sswitch_2
        0x2007 -> :sswitch_3
        0x2009 -> :sswitch_4
        0x200b -> :sswitch_5
    .end sparse-switch
.end method

.method private doRecentAppTransition(IZ)V
    .locals 10
    .parameter "type"
    .parameter "really"

    .prologue
    const/4 v9, 0x1

    .line 982
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_0

    .line 983
    const-string v7, "HtcGlAnimation"

    const-string v8, "Force do recent trans anim."

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :cond_0
    iput-boolean v9, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRecentAppInvolve:Z

    .line 986
    iput-boolean v9, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    .line 988
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v8, "recentapp_zoom"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v7

    check-cast v7, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 989
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v8, "recentapp_zoom"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v7

    check-cast v7, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 991
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, p1}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setRecentAppAnimType(I)V

    .line 992
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, p1}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setRecentAppAnimType(I)V

    .line 994
    if-nez p1, :cond_6

    .line 996
    if-eqz p2, :cond_5

    .line 998
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    .line 1001
    .local v5, rotation:I
    if-eqz v5, :cond_1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    .line 1003
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 1006
    .local v2, left:I
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 1009
    .local v6, top:I
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 1012
    .local v4, right:I
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v0, v7

    .line 1031
    .local v0, bottom:I
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v6, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v4           #right:I
    .end local v5           #rotation:I
    .end local v6           #top:I
    .local v3, rect:Landroid/graphics/Rect;
    :goto_1
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_2

    .line 1042
    const-string v7, "HtcGlAnimation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "recent app rect:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, v3}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setLayerArea(Landroid/graphics/Rect;)V

    .line 1045
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    const-string v8, "Close"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 1046
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v7, v3}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setLayerArea(Landroid/graphics/Rect;)V

    .line 1047
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    const-string v8, "Close"

    invoke-virtual {v7, v8}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 1053
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_3
    :goto_2
    return-void

    .line 1017
    .restart local v5       #rotation:I
    :cond_4
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a0020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 1020
    .restart local v2       #left:I
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 1023
    .restart local v6       #top:I
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    .line 1026
    .restart local v4       #right:I
    iget-object v7, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x40a0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    float-to-int v0, v7

    .restart local v0       #bottom:I
    goto :goto_0

    .line 1033
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v4           #right:I
    .end local v5           #rotation:I
    .end local v6           #top:I
    :catch_0
    move-exception v1

    .line 1034
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v7, "HtcGlAnimation"

    const-string v8, "Unhandled exception when load rect..."

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    const/4 v3, 0x0

    .line 1036
    .restart local v3       #rect:Landroid/graphics/Rect;
    goto :goto_1

    .line 1038
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_5
    const/4 v3, 0x0

    .restart local v3       #rect:Landroid/graphics/Rect;
    goto :goto_1

    .line 1050
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_6
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v7, :cond_3

    .line 1051
    const-string v7, "HtcGlAnimation"

    const-string v8, "Need not decide recent app rect because of fade."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doZoomTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1062
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 1063
    const-string v0, "HtcGlAnimation"

    const-string v1, "do zoom trans do due Rosie invloving."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRosieInvolve:Z

    .line 1066
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    .line 1070
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 1075
    return-void
.end method

.method private handleCentralZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 9
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v7, 0x0

    .line 786
    move-object v0, p2

    check-cast v0, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;

    .line 788
    .local v0, centralAnim:Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 791
    .local v4, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_1

    .line 792
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 793
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mainWin of wtoken:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is null..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 800
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 805
    :cond_2
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 806
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 811
    :cond_3
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 812
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 814
    .local v5, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v3

    .line 815
    .local v3, header:Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 816
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #header:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 819
    .restart local v3       #header:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 820
    .local v2, footer:Landroid/graphics/Rect;
    if-nez v2, :cond_5

    .line 821
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #footer:Landroid/graphics/Rect;
    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 824
    .restart local v2       #footer:Landroid/graphics/Rect;
    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 826
    .local v1, content:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_8

    .line 831
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 832
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 833
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 834
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 854
    :cond_6
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 855
    move-object v1, v5

    .line 856
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 857
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v6}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 859
    :cond_7
    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlCentralZoomTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 836
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_6

    .line 838
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    .line 840
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 841
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 842
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 843
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 844
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_6

    .line 846
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 847
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 848
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v1, Landroid/graphics/Rect;->right:I

    .line 849
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleContentZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 8
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v6, 0x0

    .line 867
    move-object v1, p2

    check-cast v1, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;

    .line 869
    .local v1, contentAnim:Lcom/htc/view/animation/HtcGlContentZoomTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 872
    .local v3, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_1

    .line 873
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    .line 874
    const-string v5, "HtcGlAnimation"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mainWin of wtoken:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "is null..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_2

    .line 881
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 886
    :cond_2
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v5

    if-nez v5, :cond_0

    .line 887
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 889
    .local v4, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 890
    .local v2, header:Landroid/graphics/Rect;
    if-nez v2, :cond_3

    .line 891
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #header:Landroid/graphics/Rect;
    invoke-direct {v2, v6, v6, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 894
    .restart local v2       #header:Landroid/graphics/Rect;
    :cond_3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 896
    .local v0, content:Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-lt v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    if-gt v5, v6, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_6

    .line 899
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 900
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 901
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 902
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 914
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 915
    move-object v0, v4

    .line 916
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v5}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 918
    :cond_5
    invoke-virtual {v1, v0}, Lcom/htc/view/animation/HtcGlContentZoomTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 904
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_4

    .line 906
    iget-boolean v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->FOR_CONTENTZOOM_AREA:Z

    if-eqz v5, :cond_4

    .line 907
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    .line 908
    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    .line 909
    iget v5, v2, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    .line 910
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleCubicRotateTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 9
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v7, 0x0

    .line 705
    move-object v1, p2

    check-cast v1, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;

    .line 707
    .local v1, cubicAnim:Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 710
    .local v4, mainWin:Lcom/android/server/wm/WindowState;
    if-nez v4, :cond_1

    .line 711
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    .line 712
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mainWin of wtoken:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "is null..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_2

    .line 719
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 724
    :cond_2
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_3

    .line 725
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 730
    :cond_3
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getContentArea()Landroid/graphics/Rect;

    move-result-object v6

    if-nez v6, :cond_0

    .line 731
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 733
    .local v5, winFrame:Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getHeaderArea()Landroid/graphics/Rect;

    move-result-object v3

    .line 734
    .local v3, header:Landroid/graphics/Rect;
    if-nez v3, :cond_4

    .line 735
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #header:Landroid/graphics/Rect;
    invoke-direct {v3, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 738
    .restart local v3       #header:Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->getFooterArea()Landroid/graphics/Rect;

    move-result-object v2

    .line 739
    .local v2, footer:Landroid/graphics/Rect;
    if-nez v2, :cond_5

    .line 740
    new-instance v2, Landroid/graphics/Rect;

    .end local v2           #footer:Landroid/graphics/Rect;
    invoke-direct {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 743
    .restart local v2       #footer:Landroid/graphics/Rect;
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 745
    .local v0, content:Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_8

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-gt v6, v7, :cond_8

    .line 750
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 751
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 752
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 753
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 773
    :cond_6
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 774
    move-object v0, v5

    .line 775
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setHeaderArea(Landroid/graphics/Rect;)V

    .line 776
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v6}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setFooterArea(Landroid/graphics/Rect;)V

    .line 778
    :cond_7
    invoke-virtual {v1, v0}, Lcom/htc/view/animation/HtcGlCubicRotateTransAnim;->setContentArea(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 755
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_6

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v6, v7, :cond_6

    .line 757
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-lt v6, v7, :cond_9

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-gt v6, v7, :cond_9

    .line 759
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 760
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 761
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 762
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 763
    :cond_9
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    if-lt v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-gt v6, v7, :cond_6

    .line 765
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 766
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 767
    iget v6, v5, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 768
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method private handleZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 6
    .parameter "wtoken"
    .parameter "baseAnim"
    .parameter "isEnter"

    .prologue
    const/4 v0, 0x1

    .line 655
    sget-boolean v4, Lcom/android/server/wm/HtcAnimationManagerImpl;->SKIP_OOBE_DO_ZOOM_ANIM:Z

    if-eqz v4, :cond_5

    .line 656
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 658
    .local v1, mainWin:Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_4

    .line 659
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.htc.android.htcsetupwizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.LocalePickerSetupWizard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getTransitType()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 665
    .local v0, isSkip:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 666
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_1

    .line 667
    const-string v4, "HtcGlAnimation"

    const-string v5, "skip OOBE to do zoom transition..."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {p2, v4, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setDuration(J)V

    .line 701
    .end local v0           #isSkip:Z
    .end local v1           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_1
    return-void

    .line 659
    .restart local v1       #mainWin:Lcom/android/server/wm/WindowState;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #isSkip:Z
    goto :goto_0

    .end local v0           #isSkip:Z
    .end local v1           #mainWin:Lcom/android/server/wm/WindowState;
    :cond_5
    move-object v2, p2

    .line 675
    check-cast v2, Lcom/htc/view/animation/HtcGlZoomTransAnim;

    .line 678
    .local v2, zoomAnim:Lcom/htc/view/animation/HtcGlZoomTransAnim;
    iget-boolean v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->FOR_ZOOM_POINT:Z

    if-eqz v4, :cond_8

    .line 679
    invoke-virtual {v2}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->getZoomPoint()Landroid/graphics/Point;

    move-result-object v3

    .line 680
    .local v3, zoomPoint:Landroid/graphics/Point;
    if-nez v3, :cond_2

    .line 682
    iget-boolean v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOpen:Z

    if-eqz v4, :cond_7

    .line 683
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    .line 684
    if-nez v3, :cond_6

    .line 685
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #zoomPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 687
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    :cond_6
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1

    .line 689
    :cond_7
    new-instance v3, Landroid/graphics/Point;

    .end local v3           #zoomPoint:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 690
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1

    .line 698
    .end local v3           #zoomPoint:Landroid/graphics/Point;
    :cond_8
    new-instance v3, Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 699
    .restart local v3       #zoomPoint:Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Lcom/htc/view/animation/HtcGlZoomTransAnim;->setZoomPoint(Landroid/graphics/Point;)V

    goto :goto_1
.end method


# virtual methods
.method public applyAnimationLockedInner(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;ZZ)Z
    .locals 9
    .parameter "wtoken"
    .parameter "a"
    .parameter "initialized"
    .parameter "isEnter"

    .prologue
    const/4 v6, 0x0

    .line 395
    instance-of v5, p2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_1

    .line 398
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v5, :cond_0

    .line 399
    const-string v5, "HtcGlAnimation"

    const-string v6, "HtcBaseGlTransAnim found in the begining!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object v0, p2

    .line 441
    check-cast v0, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 442
    .local v0, baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    iget-boolean v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOpen:Z

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Z)V

    .line 443
    invoke-virtual {v0, p4}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setEnterOrExit(Z)V

    .line 444
    iget-object v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getRotation()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOrientation(I)V

    .line 445
    iget-object v5, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getStatusBarRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setStatusBarRect(Landroid/graphics/Rect;)V

    .line 449
    invoke-virtual {v0}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 467
    :goto_1
    iget-object v5, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v5, v0, p3}, Lcom/android/server/wm/AppWindowAnimator;->setHtcGlAnimation(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    .line 468
    const/4 v5, 0x1

    .end local v0           #baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :goto_2
    return v5

    .line 402
    :cond_1
    instance-of v5, p2, Landroid/view/animation/AnimationSet;

    if-eqz v5, :cond_9

    move-object v5, p2

    .line 405
    check-cast v5, Landroid/view/animation/AnimationSet;

    invoke-virtual {v5}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 406
    .local v2, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcGlAnimation"

    const-string v7, "AnimationSet:"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 409
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v3, :cond_4

    .line 410
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v5, :cond_3

    const-string v5, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "child:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 414
    :cond_4
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_5

    .line 415
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 416
    .local v1, child:Landroid/view/animation/Animation;
    instance-of v5, v1, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_6

    .line 417
    move-object p2, v1

    .line 421
    .end local v1           #child:Landroid/view/animation/Animation;
    :cond_5
    instance-of v5, p2, Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v5, :cond_7

    .line 422
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcGlAnimation"

    const-string v6, "HtcBaseGlTransAnim found in top-most animation set!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    .restart local v1       #child:Landroid/view/animation/Animation;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 428
    .end local v1           #child:Landroid/view/animation/Animation;
    :cond_7
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v5, :cond_8

    const-string v5, "HtcGlAnimation"

    const-string v7, "No HtcBaseGlTransAnim found in top-most animation set!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v5, v6

    .line 430
    goto/16 :goto_2

    .line 435
    .end local v2           #children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_9
    sget-boolean v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v5, :cond_a

    sget-boolean v5, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v5, :cond_a

    const-string v5, "HtcGlAnimation"

    const-string v7, "No HtcBaseGlTransAnim found in both case!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v5, v6

    .line 437
    goto/16 :goto_2

    .line 451
    .restart local v0       #baseAnim:Lcom/htc/view/animation/HtcBaseGlTransAnim;
    :pswitch_0
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/wm/HtcAnimationManagerImpl;->handleZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto/16 :goto_1

    .line 455
    :pswitch_1
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/wm/HtcAnimationManagerImpl;->handleCubicRotateTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto/16 :goto_1

    .line 459
    :pswitch_2
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/wm/HtcAnimationManagerImpl;->handleCentralZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto/16 :goto_1

    .line 463
    :pswitch_3
    invoke-direct {p0, p1, v0, p4}, Lcom/android/server/wm/HtcAnimationManagerImpl;->handleContentZoomTransition(Lcom/android/server/wm/AppWindowToken;Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V

    goto/16 :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
    .locals 4
    .parameter "isEnter"

    .prologue
    const-wide/16 v2, 0x0

    .line 284
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsMeetContinuousTrans:Z

    if-eqz v0, :cond_1

    .line 285
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "HtcGlAnimation"

    const-string v1, "override app trans anim by continous trans anim."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    new-instance v0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;-><init>(Z)V

    .line 380
    :goto_0
    return-object v0

    .line 292
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRecentAppInvolve:Z

    if-eqz v0, :cond_3

    .line 293
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "HtcGlAnimation"

    const-string v1, "override app trans anim by RecentApp involving."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    if-eqz p1, :cond_6

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getRecentAppAnimType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 347
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v0, :cond_c

    .line 349
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsHomeKeyPressed:Z

    if-eqz v0, :cond_9

    .line 350
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_4

    .line 351
    const-string v0, "HtcGlAnimation"

    const-string v1, "override app trans anim by starting HOME by HOME key."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_4
    if-eqz p1, :cond_8

    .line 355
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_0

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 307
    :cond_5
    new-instance v0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 314
    :pswitch_1
    new-instance v0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0, v2, v3}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setDuration(J)V

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 323
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getRecentAppAnimType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 326
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->getLayerArea()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto :goto_0

    .line 331
    :cond_7
    new-instance v0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeInOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 338
    :pswitch_4
    new-instance v0, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;

    invoke-direct {v0, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl$FadeOutAnimation;-><init>(Z)V

    goto :goto_0

    .line 341
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    invoke-virtual {v0, v2, v3}, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;->setDuration(J)V

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    goto/16 :goto_0

    .line 357
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto/16 :goto_0

    .line 361
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRosieInvolve:Z

    if-eqz v0, :cond_c

    .line 362
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_a

    .line 363
    const-string v0, "HtcGlAnimation"

    const-string v1, "override app trans anim by Rosie involving."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_a
    if-eqz p1, :cond_b

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto/16 :goto_0

    .line 369
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto/16 :goto_0

    .line 375
    :cond_c
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_d

    .line 376
    const-string v0, "HtcGlAnimation"

    const-string v1, "override htcgl app trans anim by API."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_d
    if-eqz p1, :cond_e

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto/16 :goto_0

    .line 380
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 323
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public cleanAnimParamsLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 475
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsMeetContinuousTrans:Z

    .line 477
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsHomeKeyPressed:Z

    .line 478
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 479
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 481
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRosieInvolve:Z

    .line 482
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRosieAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 483
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRosieAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 485
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRecentAppInvolve:Z

    .line 486
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 487
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mExcludeFromRecent:Z

    .line 490
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    .line 491
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 492
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 494
    iput-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    .line 496
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "Anim Params and flags has been cleared!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    return-void
.end method

.method public clearCurrentAnimationLocked()V
    .locals 5

    .prologue
    .line 631
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsClearingCurrentAnim:Z

    .line 632
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 634
    .local v0, N:I
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_TO_NATIVE:Z

    if-eqz v3, :cond_0

    .line 635
    if-gtz v0, :cond_2

    .line 636
    const-string v3, "HtcGlAnimation"

    const-string v4, "clearCrrentAnim::no current animation."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_0
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 643
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 644
    .local v1, appToken:Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_1

    .line 645
    iget-object v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowAnimator;->clearHtcGlAnimation()V

    .line 642
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 638
    .end local v1           #appToken:Lcom/android/server/wm/AppWindowToken;
    .end local v2           #i:I
    :cond_2
    const-string v3, "HtcGlAnimation"

    const-string v4, "clearCrrentAnim::clear current animation..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 648
    .restart local v2       #i:I
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 649
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsClearingCurrentAnim:Z

    .line 650
    return-void
.end method

.method public deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 6
    .parameter "appToken"

    .prologue
    .line 606
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v3, :cond_4

    .line 607
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 608
    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_4

    .line 609
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 611
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, p1, :cond_3

    .line 612
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 615
    :cond_0
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_TO_NATIVE:Z

    if-eqz v3, :cond_1

    .line 616
    const-string v3, "HtcGlAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deinitAnim::destroy htcgl anim of the Window:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsClearingCurrentAnim:Z

    if-nez v3, :cond_2

    .line 620
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 622
    :cond_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v4, -0x4080

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimProgress:F

    .line 608
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 626
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_4
    return-void
.end method

.method public doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, openingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, closingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v5, 0x0

    .line 927
    sget-boolean v4, Lcom/android/server/wm/HtcAnimationManagerImpl;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v4, :cond_6

    .line 930
    const/4 v2, 0x0

    .line 933
    .local v2, tokenName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 934
    .local v0, NN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 935
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 936
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 937
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 939
    :cond_0
    if-eqz v2, :cond_2

    const-string v4, "com.htc.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 940
    invoke-direct {p0}, Lcom/android/server/wm/HtcAnimationManagerImpl;->doZoomTransition()V

    .line 978
    .end local v0           #NN:I
    .end local v1           #i:I
    .end local v2           #tokenName:Ljava/lang/String;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    :goto_1
    return-void

    .line 934
    .restart local v0       #NN:I
    .restart local v1       #i:I
    .restart local v2       #tokenName:Ljava/lang/String;
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 946
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 947
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 948
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_4

    .line 949
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 951
    :cond_4
    if-eqz v2, :cond_5

    const-string v4, "com.htc.launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 952
    invoke-direct {p0}, Lcom/android/server/wm/HtcAnimationManagerImpl;->doZoomTransition()V

    goto :goto_1

    .line 946
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 958
    .end local v0           #NN:I
    .end local v1           #i:I
    .end local v2           #tokenName:Ljava/lang/String;
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_6
    sget-boolean v4, Lcom/android/server/wm/HtcAnimationManagerImpl;->RECENTAPP_WITH_STARTING_WINDOW:Z

    if-eqz v4, :cond_1

    .line 962
    const/4 v2, 0x0

    .line 965
    .restart local v2       #tokenName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 966
    .restart local v0       #NN:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 967
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 968
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_7

    .line 969
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 971
    :cond_7
    if-eqz v2, :cond_9

    const-string v4, "com.android.systemui/.recent.RecentAppFxActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 972
    iget-boolean v4, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mExcludeFromRecent:Z

    if-nez v4, :cond_8

    const/4 v4, 0x1

    :goto_4
    invoke-direct {p0, v5, v4}, Lcom/android/server/wm/HtcAnimationManagerImpl;->doRecentAppTransition(IZ)V

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_4

    .line 966
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimDuration:I

    return v0
.end method

.method public getAnimationRate()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    return v0
.end method

.method public includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 12
    .parameter "w"
    .parameter "attrs"
    .parameter "attrFlags"

    .prologue
    const/4 v11, 0x1

    .line 502
    iget-object v8, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v8, :cond_7

    .line 507
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_TO_NATIVE:Z

    if-eqz v8, :cond_0

    .line 508
    const-string v8, "HtcGlAnimation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "include the Window:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", ty ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", fl=#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,fullScreen= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    sget-boolean v8, Lcom/android/server/wm/HtcAnimationManagerImpl;->HIDE_STATUS_BAR:Z

    if-eqz v8, :cond_2

    .line 534
    const/4 v3, 0x0

    .line 540
    .local v3, isHideStatusBarArea:Z
    :goto_0
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v8, v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setIsHideStatusBarArea(Z)V

    .line 543
    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v11, :cond_1

    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 545
    :cond_1
    iget v8, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v8, v11, :cond_3

    .line 547
    const/4 v4, 0x1

    .line 557
    .local v4, isMainWindow:Z
    :goto_1
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v8, v4}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setIsMainWindow(Z)V

    .line 561
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v8}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->encodeGlobalParamsToArray()[Ljava/lang/String;

    move-result-object v6

    .line 563
    .local v6, outputGParams:[Ljava/lang/String;
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_TO_NATIVE:Z

    if-eqz v8, :cond_5

    .line 564
    const-string v8, "HtcGlAnimation"

    const-string v9, "encodeGlobalParams Complete! The String array is:"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v5, :cond_5

    aget-object v1, v0, v2

    .line 566
    .local v1, element:Ljava/lang/String;
    const-string v8, "HtcGlAnimation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGlAttributeSet[i]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 538
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #isHideStatusBarArea:Z
    .end local v4           #isMainWindow:Z
    .end local v5           #len$:I
    .end local v6           #outputGParams:[Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #isHideStatusBarArea:Z
    goto :goto_0

    .line 549
    :cond_3
    const/4 v4, 0x0

    .restart local v4       #isMainWindow:Z
    goto :goto_1

    .line 555
    .end local v4           #isMainWindow:Z
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #isMainWindow:Z
    goto :goto_1

    .line 570
    .restart local v6       #outputGParams:[Ljava/lang/String;
    :cond_5
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v8}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->encodeSpecificParamsToArray()[Ljava/lang/String;

    move-result-object v7

    .line 572
    .local v7, outputSParams:[Ljava/lang/String;
    sget-boolean v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v8, :cond_6

    sget-boolean v8, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_TO_NATIVE:Z

    if-eqz v8, :cond_6

    .line 573
    const-string v8, "HtcGlAnimation"

    const-string v9, "encodeSpecificParams Complete! The String array is:"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object v0, v7

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_6

    aget-object v1, v0, v2

    .line 575
    .restart local v1       #element:Ljava/lang/String;
    const-string v8, "HtcGlAnimation"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGlAttributeSet[i]= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 580
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #element:Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    :cond_6
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v9, -0x4080

    iput v9, v8, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimProgress:F

    .line 582
    .end local v3           #isHideStatusBarArea:Z
    .end local v4           #isMainWindow:Z
    .end local v6           #outputGParams:[Ljava/lang/String;
    .end local v7           #outputSParams:[Ljava/lang/String;
    :cond_7
    return-void
.end method

.method public isOverrideAnimDuration()Z
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimDuration:I

    if-ltz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverrideAnimRate()Z
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 139
    iget v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    if-gt v0, v1, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverrideAppTransAnim()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    return v0
.end method

.method public monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 0
    .parameter "targetAnim"
    .parameter "isStart"

    .prologue
    .line 1080
    invoke-virtual {p1, p2}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->monitorTransAnim(Z)V

    .line 1081
    return-void
.end method

.method public overrideHtcGlAppTransAnimLocked(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 3
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    const/4 v2, 0x1

    .line 176
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 177
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "overrideHtcGlAnim:: animation object is null! not going to override."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    .line 186
    if-ne p1, p2, :cond_3

    .line 187
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "HtcGlAnimation"

    const-string v1, "overrideHtcGlAnim:: animEnter and animExit are same object..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_2
    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_3

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "swipe_cubic"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object p2

    move-object v0, p2

    .line 193
    check-cast v0, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    move-object v1, p1

    check-cast v1, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;

    invoke-virtual {v1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->getDirection()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlSwipeCubicTransAnim;->setDirection(I)V

    .line 198
    :cond_3
    invoke-virtual {p1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getAnimationType()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    move-object v0, p1

    .line 200
    check-cast v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimEnter:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    move-object v0, p2

    .line 201
    check-cast v0, Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mRecentAppAnimExit:Lcom/htc/view/animation/HtcGlRecentAppZoomTransAnim;

    .line 202
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsRecentAppInvolve:Z

    .line 209
    :goto_1
    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/HtcAnimationManagerImpl;->debugApiIsWorking(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V

    goto :goto_0

    .line 205
    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mOverrideAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 206
    iput-object p2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mOverrideAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    goto :goto_1
.end method

.method public prepareRecentAppTransitionAnimation(Z)V
    .locals 0
    .parameter "isExcludeFromRecent"

    .prologue
    .line 1057
    iput-boolean p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mExcludeFromRecent:Z

    .line 1058
    return-void
.end method

.method public progressAnimationLocked()V
    .locals 6

    .prologue
    .line 587
    iget-object v3, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimatingWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 588
    .local v2, w:Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurface:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 590
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->mHtcGlAnimation:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    invoke-virtual {v3}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->getCurrentProgress()F

    move-result v1

    .line 592
    .local v1, progress:F
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimProgress:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_0

    .line 593
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_PROGRESS:Z

    if-eqz v3, :cond_1

    .line 594
    const-string v3, "HtcGlAnimation"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of the Window:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_1
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v1, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastAnimProgress:F

    goto :goto_0

    .line 603
    .end local v1           #progress:F
    .end local v2           #w:Lcom/android/server/wm/WindowState;
    :cond_2
    return-void
.end method

.method public sendActionUpPositionForAnimationLocked(Lcom/android/server/wm/WindowState;FF)V
    .locals 3
    .parameter "win"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 152
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 153
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "HtcGlAnimation"

    const-string v1, "=== set action up position: ==="

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "HtcGlAnimation"

    const-string v1, "not touch on the main window, do not store touch point."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    .line 166
    :goto_1
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "HtcGlAnimation"

    const-string v1, "=== set action up position: ==="

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v1, "HtcGlAnimation"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mTouchPoint:Landroid/graphics/Point;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_1

    .line 168
    :cond_3
    const-string v0, "is null."

    goto :goto_2
.end method

.method public setAnimationDuration(I)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimDuration:I

    .line 108
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App transiton animation duration is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (msec)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return-void
.end method

.method public setAnimationRate(I)V
    .locals 3
    .parameter "rate"

    .prologue
    .line 119
    iput p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    .line 120
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "HtcGlAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App transiton animation frame rate is set to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mSetAppTranAnimRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (1/s)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void
.end method

.method public setTransitLocked(I)V
    .locals 1
    .parameter "transit"

    .prologue
    .line 237
    sparse-switch p1, :sswitch_data_0

    .line 250
    :goto_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl;->debugTransitType(I)V

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/HtcAnimationManagerImpl;->checkContinuousTrans()V

    .line 255
    return-void

    .line 241
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOpen:Z

    goto :goto_0

    .line 246
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOpen:Z

    goto :goto_0

    .line 237
    :sswitch_data_0
    .sparse-switch
        0x1006 -> :sswitch_0
        0x1008 -> :sswitch_0
        0x100a -> :sswitch_0
        0x2007 -> :sswitch_1
        0x2009 -> :sswitch_1
        0x200b -> :sswitch_1
    .end sparse-switch
.end method

.method public startHomeByHomeKey()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->CUSTOMIZE_FOR_ROSIE:Z

    if-eqz v0, :cond_1

    .line 222
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/HtcAnimationManagerImpl;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "HtcGlAnimation"

    const-string v1, "startHomeByHomeKey!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsHomeKeyPressed:Z

    .line 226
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mIsOverrideAppTranAnim:Z

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimEnter:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mAnimFactory:Lcom/htc/view/animation/HtcGlTransAnimFactory;

    const-string v1, "zoom"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcGlTransAnimFactory;->createGlAnim(Ljava/lang/String;)Lcom/htc/view/animation/HtcBaseGlTransAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl;->mHomeKeyAnimExit:Lcom/htc/view/animation/HtcBaseGlTransAnim;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lcom/htc/view/animation/HtcBaseGlTransAnim;->setOpenOrClose(Ljava/lang/String;)V

    .line 234
    :cond_1
    return-void
.end method
