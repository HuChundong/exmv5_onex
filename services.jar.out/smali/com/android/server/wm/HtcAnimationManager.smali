.class interface abstract Lcom/android/server/wm/HtcAnimationManager;
.super Ljava/lang/Object;
.source "HtcAnimationManager.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final CUSTOMIZE_FOR_ROSIE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_ANIM:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_ANIM_CHOOSEN:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_ANIM_PROGRESS:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_API:Z = false

#the value of this static final field might be set in the static constructor
.field public static final DEBUG_TO_NATIVE:Z = false

#the value of this static final field might be set in the static constructor
.field public static final HIDE_STATUS_BAR:Z = false

#the value of this static final field might be set in the static constructor
.field public static final RECENTAPP_WITH_STARTING_WINDOW:Z = false

#the value of this static final field might be set in the static constructor
.field public static final SKIP_OOBE_DO_ZOOM_ANIM:Z = false

.field public static final TAG:Ljava/lang/String; = "HtcGlAnimation"

#the value of this static final field might be set in the static constructor
.field public static final USE_HTC_TRANSITION_ANIM:Z = false

.field public static final overrideHtcGlAnimString:Ljava/lang/String; = "overrideHtcGlAnim:: "


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 14
    sget-boolean v2, Lcom/htc/view/animation/HtcGlTransAnimFactory;->USE_HTC_TRANSITION_ANIM:Z

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->USE_HTC_TRANSITION_ANIM:Z

    .line 19
    const-string v2, "debug_more_htcgl_log"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->DEBUG_ANIM:Z

    .line 21
    const-string v2, "debug_api"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->DEBUG_API:Z

    .line 23
    const-string v2, "debug_to_native"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->DEBUG_TO_NATIVE:Z

    .line 25
    const-string v2, "debug_anim_progress"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->DEBUG_ANIM_PROGRESS:Z

    .line 27
    const-string v2, "debug_anim_choosen"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->DEBUG_ANIM_CHOOSEN:Z

    .line 32
    const-string v2, "skip_OOBE_do_zoom"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/HtcAnimationManager;->SKIP_OOBE_DO_ZOOM_ANIM:Z

    .line 37
    const-string v2, "customize_for_rosie"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xdf

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xe2

    if-eq v2, v3, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/wm/HtcAnimationManager;->CUSTOMIZE_FOR_ROSIE:Z

    .line 43
    const-string v0, "hide_status_bar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HtcAnimationManager;->HIDE_STATUS_BAR:Z

    .line 47
    const-string v0, "recentapp_starting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/HtcAnimationManager;->RECENTAPP_WITH_STARTING_WINDOW:Z

    return-void
.end method


# virtual methods
.method public abstract applyAnimationLockedInner(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;ZZ)Z
.end method

.method public abstract applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
.end method

.method public abstract cleanAnimParamsLocked()V
.end method

.method public abstract clearCurrentAnimationLocked()V
.end method

.method public abstract deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
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
.end method

.method public abstract getAnimationDuration()I
.end method

.method public abstract getAnimationRate()I
.end method

.method public abstract includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;I)V
.end method

.method public abstract isOverrideAnimDuration()Z
.end method

.method public abstract isOverrideAnimRate()Z
.end method

.method public abstract isOverrideAppTransAnim()Z
.end method

.method public abstract monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
.end method

.method public abstract overrideHtcGlAppTransAnimLocked(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
.end method

.method public abstract prepareRecentAppTransitionAnimation(Z)V
.end method

.method public abstract progressAnimationLocked()V
.end method

.method public abstract sendActionUpPositionForAnimationLocked(Lcom/android/server/wm/WindowState;FF)V
.end method

.method public abstract setAnimationDuration(I)V
.end method

.method public abstract setAnimationRate(I)V
.end method

.method public abstract setTransitLocked(I)V
.end method

.method public abstract startHomeByHomeKey()V
.end method
