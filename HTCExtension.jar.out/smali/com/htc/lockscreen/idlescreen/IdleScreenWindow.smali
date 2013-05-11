.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.super Ljava/lang/Object;
.source "IdleScreenWindow.java"


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenWindow"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field protected final mLayout:Landroid/view/WindowManager$LayoutParams;

.field protected mShow:I

.field protected mShowLiveWallpaper:Z

.field protected mVisibility:I

.field protected mWindowConfiguration:Landroid/content/res/Configuration;

.field protected mWindowFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    .line 21
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 24
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 40
    return-void
.end method


# virtual methods
.method protected attach()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected detach()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public disableAnimation()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method protected doDestroy()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public finishDrawing()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIdleScreenEngine()Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    return-object v0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowLiveWallpaper()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    return v0
.end method

.method public getWindowLayout()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getWindowShow()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    return v0
.end method

.method public getWindowVisibility()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    return v0
.end method

.method public performHapticFeedback(IZ)V
    .locals 0
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 229
    return-void
.end method

.method setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 44
    iget-object v0, p1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowConfiguration:Landroid/content/res/Configuration;

    .line 46
    return-void
.end method

.method protected setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 174
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eq v0, p1, :cond_0

    .line 182
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 191
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->requestUpdateSurface()V

    .line 193
    :cond_0
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public setWindowConfig(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string v0, "IdleScreenWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowConfig~ config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowConfiguration:Landroid/content/res/Configuration;

    .line 239
    invoke-virtual {p0, v3, v3, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 240
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 111
    return-void
.end method

.method public setWindowShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    .line 94
    :goto_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    .line 95
    return-void

    .line 92
    :cond_0
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    goto :goto_0
.end method

.method public setWindowSize(II)V
    .locals 0
    .parameter "width"
    .parameter "heigt"

    .prologue
    .line 233
    return-void
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 126
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 127
    return-void
.end method

.method protected abstract updateSurface(ZZZ)V
.end method
