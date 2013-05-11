.class Lcom/android/server/wm/HtcAnimationManagerImpl2;
.super Ljava/lang/Object;
.source "HtcAnimationManagerImpl2.java"

# interfaces
.implements Lcom/android/server/wm/HtcAnimationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;
    }
.end annotation


# static fields
.field static final FADE_DURATION:I = 0x96

.field static final SCALE_DOWN_DURATION:I = 0xc8


# instance fields
.field mContext:Landroid/content/Context;

.field mExcludeFromRecent:Z

.field mIsOverrideAppTranAnim:Z

.field mIsRecentAppInvolve:Z

.field mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 2
    .parameter "service"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    .line 43
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 44
    const-string v0, "HtcGlAnimation"

    const-string v1, "HtcAnimManagerImpl2 is created!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 46
    iput-object p2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private static computePivot(IF)F
    .locals 3
    .parameter "startPos"
    .parameter "finalScale"

    .prologue
    .line 169
    const/high16 v1, 0x3f80

    sub-float v0, p1, v1

    .line 170
    .local v0, denom:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 171
    int-to-float v1, p0

    .line 173
    :goto_0
    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method private createExitAnimationLocked(I)Landroid/view/animation/Animation;
    .locals 3
    .parameter "duration"

    .prologue
    const/high16 v1, 0x3f80

    .line 150
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 151
    .local v0, a:Landroid/view/animation/Animation;
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 153
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 154
    return-object v0
.end method

.method private createScaleDownAnimationLocked(ZIILandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 11
    .parameter "enter"
    .parameter "Dw"
    .parameter "Dh"
    .parameter "scaleDowntoRect"

    .prologue
    .line 114
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    const-string v1, "HtcGlAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create scale down animation: enter="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Dw="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Dh="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", scaleDowntoRect="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    const/16 v8, 0xc8

    .line 123
    .local v8, duration:I
    if-nez p1, :cond_1

    .line 125
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p2

    div-float v2, v1, v3

    .line 126
    .local v2, scaleW:F
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p3

    div-float v4, v1, v3

    .line 127
    .local v4, scaleH:F
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    iget v5, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v2}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->computePivot(IF)F

    move-result v5

    iget v6, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v4}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->computePivot(IF)F

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 130
    .local v0, scale:Landroid/view/animation/Animation;
    int-to-long v5, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 131
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 132
    .local v10, set:Landroid/view/animation/AnimationSet;
    int-to-long v5, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 133
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 135
    move-object v7, v10

    .line 140
    .end local v0           #scale:Landroid/view/animation/Animation;
    .end local v2           #scaleW:F
    .end local v4           #scaleH:F
    .end local v10           #set:Landroid/view/animation/AnimationSet;
    .local v7, a:Landroid/view/animation/Animation;
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 141
    iget-object v1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    const v3, 0x10c000b

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    .line 143
    .local v9, interpolator:Landroid/view/animation/Interpolator;
    invoke-virtual {v7, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    invoke-virtual {v7, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 145
    return-object v7

    .line 138
    .end local v7           #a:Landroid/view/animation/Animation;
    .end local v9           #interpolator:Landroid/view/animation/Interpolator;
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->createExitAnimationLocked(I)Landroid/view/animation/Animation;

    move-result-object v7

    .restart local v7       #a:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method private doRecentAppTransition()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 217
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "HtcGlAnimation"

    const-string v1, "Force do recent trans anim."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    .line 221
    iput-boolean v2, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    .line 223
    return-void
.end method


# virtual methods
.method public applyAnimationLockedInner(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;ZZ)Z
    .locals 1
    .parameter "wtoken"
    .parameter "a"
    .parameter "initialized"
    .parameter "isEnter"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public applyOverrideAppTranAnimLocked(Z)Landroid/view/animation/Animation;
    .locals 9
    .parameter "isEnter"

    .prologue
    .line 61
    iget-boolean v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    if-eqz v6, :cond_3

    .line 62
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_0

    sget-boolean v6, Lcom/android/server/wm/HtcAnimationManagerImpl2;->DEBUG_ANIM_CHOOSEN:Z

    if-eqz v6, :cond_0

    .line 63
    const-string v6, "HtcGlAnimation"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "override app trans anim by RecentApp involving,mExcludeFromRecent= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    iget-boolean v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    if-nez v6, :cond_2

    .line 68
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v6, Lcom/android/server/wm/WindowManagerService;->mAppDisplayWidth:I

    .line 69
    .local v1, Dw:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v6, Lcom/android/server/wm/WindowManagerService;->mAppDisplayHeight:I

    .line 72
    .local v0, Dh:I
    if-le v0, v1, :cond_1

    .line 74
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 77
    .local v3, left:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 80
    .local v5, top:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 83
    .local v4, right:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a001f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 102
    .local v2, bottom:I
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v5, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1, v1, v0, v6}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->createScaleDownAnimationLocked(ZIILandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v6

    .line 108
    .end local v0           #Dh:I
    .end local v1           #Dw:I
    .end local v2           #bottom:I
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    :goto_1
    return-object v6

    .line 88
    .restart local v0       #Dh:I
    .restart local v1       #Dw:I
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a0020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 91
    .restart local v3       #left:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a0021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 94
    .restart local v5       #top:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a0022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 97
    .restart local v4       #right:I
    iget-object v6, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x40a0023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .restart local v2       #bottom:I
    goto :goto_0

    .line 105
    .end local v0           #Dh:I
    .end local v1           #Dw:I
    .end local v2           #bottom:I
    .end local v3           #left:I
    .end local v4           #right:I
    .end local v5           #top:I
    :cond_2
    new-instance v6, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;

    invoke-direct {v6, p1}, Lcom/android/server/wm/HtcAnimationManagerImpl2$FadeAnimation;-><init>(Z)V

    goto :goto_1

    .line 108
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public cleanAnimParamsLocked()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    .line 185
    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsRecentAppInvolve:Z

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    .line 187
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcGlAnimation"

    const-string v1, "Anim Params and flags has been cleared!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    return-void
.end method

.method public clearCurrentAnimationLocked()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public deinitAnimationLocked(Lcom/android/server/wm/AppWindowToken;)V
    .locals 0
    .parameter "appToken"

    .prologue
    .line 194
    return-void
.end method

.method public doHack(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
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
    .line 200
    .local p1, openingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .local p2, closingApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v2, 0x0

    .line 203
    .local v2, tokenName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    .local v0, NN:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 205
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 206
    .local v3, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz v4, :cond_0

    .line 207
    iget-object v4, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    :cond_0
    if-eqz v2, :cond_2

    const-string v4, "com.android.systemui/.recent.RecentAppFxActivity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/android/server/wm/HtcAnimationManagerImpl2;->doRecentAppTransition()V

    .line 214
    .end local v3           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_1
    return-void

    .line 204
    .restart local v3       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAnimationDuration()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    return v0
.end method

.method public getAnimationRate()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public includeWindowForAnimationLocked(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 0
    .parameter "w"
    .parameter "attrs"
    .parameter "attrFlags"

    .prologue
    .line 192
    return-void
.end method

.method public isOverrideAnimDuration()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideAnimRate()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideAppTransAnim()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mIsOverrideAppTranAnim:Z

    return v0
.end method

.method public monitorTransAnim(Lcom/htc/view/animation/HtcBaseGlTransAnim;Z)V
    .locals 0
    .parameter "targetAnim"
    .parameter "isStart"

    .prologue
    .line 230
    return-void
.end method

.method public overrideHtcGlAppTransAnimLocked(Lcom/htc/view/animation/HtcBaseGlTransAnim;Lcom/htc/view/animation/HtcBaseGlTransAnim;)V
    .locals 0
    .parameter "animEnter"
    .parameter "animExit"

    .prologue
    .line 56
    return-void
.end method

.method public prepareRecentAppTransitionAnimation(Z)V
    .locals 0
    .parameter "isExcludeFromRecent"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/server/wm/HtcAnimationManagerImpl2;->mExcludeFromRecent:Z

    .line 228
    return-void
.end method

.method public progressAnimationLocked()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public sendActionUpPositionForAnimationLocked(Lcom/android/server/wm/WindowState;FF)V
    .locals 0
    .parameter "win"
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 55
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 49
    return-void
.end method

.method public setAnimationRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 51
    return-void
.end method

.method public setTransitLocked(I)V
    .locals 0
    .parameter "transit"

    .prologue
    .line 58
    return-void
.end method

.method public startHomeByHomeKey()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
