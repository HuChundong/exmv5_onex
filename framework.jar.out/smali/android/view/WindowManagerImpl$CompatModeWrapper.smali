.class Landroid/view/WindowManagerImpl$CompatModeWrapper;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;
.implements Landroid/view/HtcIfWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatModeWrapper"
.end annotation


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V
    .locals 1
    .parameter "wm"
    .parameter "ci"

    .prologue
    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    instance-of v0, p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local p1
    iget-object p1, p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    :goto_0
    iput-object p1, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 158
    if-nez p2, :cond_1

    .line 159
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    .line 166
    :goto_1
    iput-object p2, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 167
    return-void

    .line 151
    .restart local p1
    :cond_0
    check-cast p1, Landroid/view/WindowManagerImpl;

    goto :goto_0

    .line 162
    .end local p1
    :cond_1
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/Display;->createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V

    .line 172
    return-void
.end method

.method public addWindowToken(Landroid/os/IBinder;I)V
    .locals 1
    .parameter "token"
    .parameter "type"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1, p2}, Landroid/view/HtcIfWindowManager;->addWindowToken(Landroid/os/IBinder;I)V

    .line 208
    :cond_0
    return-void
.end method

.method public getAnimationScales()[F
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0}, Landroid/view/HtcIfWindowManager;->getAnimationScales()[F

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0}, Landroid/view/HtcIfWindowManager;->getRotation()I

    move-result v0

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSwitchState(I)I
    .locals 1
    .parameter "sw"

    .prologue
    .line 251
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->getSwitchState(I)I

    move-result v0

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "ev"
    .parameter "sync"

    .prologue
    .line 259
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1, p2}, Landroid/view/HtcIfWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public keyguardIsShowing()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0}, Landroid/view/HtcIfWindowManager;->keyguardIsShowing()Z

    move-result v0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 182
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 183
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 192
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public removeWindowToken(Landroid/os/IBinder;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->removeWindowToken(Landroid/os/IBinder;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setAnimationScales([F)V
    .locals 1
    .parameter "scales"

    .prologue
    .line 225
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setAnimationScales([F)V

    .line 228
    :cond_0
    return-void
.end method

.method public setPenSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 289
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1, p2}, Landroid/view/HtcIfWindowManager;->setPenSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setPointerSpeed(I)V
    .locals 1
    .parameter "speed"

    .prologue
    .line 231
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setPointerSpeed(I)V

    .line 234
    :cond_0
    return-void
.end method

.method public setShowKeyguard(Z)V
    .locals 1
    .parameter "showLockScreen"

    .prologue
    .line 275
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setShowKeyguard(Z)V

    .line 278
    :cond_0
    return-void
.end method

.method public setStatusBarTouchMode(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 237
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->setStatusBarTouchMode(Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public setWindowCrop(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/view/WindowManagerImpl;->setWindowCrop(Landroid/view/View;IIII)V

    .line 302
    return-void
.end method

.method public showKeyguardWithAnimation(Z)V
    .locals 1
    .parameter "showLockScreen"

    .prologue
    .line 281
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    instance-of v0, v0, Landroid/view/HtcIfWindowManager;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-interface {v0, p1}, Landroid/view/HtcIfWindowManager;->showKeyguardWithAnimation(Z)V

    .line 284
    :cond_0
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    return-void
.end method
