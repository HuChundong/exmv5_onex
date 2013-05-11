.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;
.super Ljava/lang/Object;
.source "SunnySceneChangeInterrupt.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$2;,
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;
    }
.end annotation


# static fields
.field private static final INTERRUPT_TIMER:I = 0xbb8

.field private static final RETRY_TIMER:I = 0x3e8

.field public static final SCISTATE_INTERRUPT_BACKKEY:I = 0xa

.field public static final SCISTATE_INTERRUPT_ERROR_REPORT:I = 0xe

.field public static final SCISTATE_INTERRUPT_MEDIACONNECT:I = 0xb

.field public static final SCISTATE_INTERRUPT_MEDIADISCONNECT:I = 0xc

.field public static final SCISTATE_INTERRUPT_NEW_INTENT:I = 0xf

.field public static final SCISTATE_INTERRUPT_REMOVEALLSCENE:I = 0xd

.field public static final SCISTATE_INTERRUPT_UNKNOWN:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mIsDestroyed:Z

    .line 275
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$1;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private onInterruptMediaConnect()V
    .locals 6

    .prologue
    .line 135
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isDisplayControlBusy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptMediaConnect]: busy try again later: 1000"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/16 v3, 0xb

    sget-object v4, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_CONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/16 v5, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 144
    :cond_2
    const/4 v2, 0x0

    .line 145
    .local v2, sceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 148
    .local v1, fragment:Lcom/htc/app/mf/MfFragment;
    instance-of v3, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 149
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 153
    :cond_3
    :goto_1
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->enableErrorScene()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->isInErrorScene()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptMediaConnect]: exit from error scene..."

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->removeAllScene()Z

    .line 164
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->onCreateScene()Z

    goto :goto_0

    .line 150
    :cond_4
    instance-of v3, v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-eqz v3, :cond_3

    move-object v2, v0

    .line 151
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    goto :goto_1
.end method

.method private onInterruptMediaDisconnect()V
    .locals 6

    .prologue
    .line 169
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isDisplayControlBusy()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v4, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptMediaDisconnect]: busy try again later: 1000"

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/16 v3, 0xc

    sget-object v4, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->MEDIA_DISCONNECT:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/16 v5, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 181
    :cond_2
    const/4 v2, 0x0

    .line 182
    .local v2, sceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, activity:Landroid/app/Activity;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->mfragmentReference()Lcom/htc/app/mf/MfFragment;

    move-result-object v1

    .line 185
    .local v1, fragment:Lcom/htc/app/mf/MfFragment;
    instance-of v3, v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-eqz v3, :cond_4

    move-object v2, v1

    .line 186
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 190
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 193
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->isInErrorScene()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 196
    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->onUpdateErrorScene()V

    goto :goto_0

    .line 187
    :cond_4
    instance-of v3, v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-eqz v3, :cond_3

    move-object v2, v0

    .line 188
    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    goto :goto_1

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->removeAllScene()Z

    .line 202
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->gotoErrorScene(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private onInterruptNewIntent(Ljava/lang/Object;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 239
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    instance-of v4, p1, Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 245
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isDisplayControlBusy()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptNewIntent]: busy try again later: 1000"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/16 v4, 0xf

    const/16 v5, 0x3e8

    invoke-virtual {p0, v4, p1, v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, activity:Landroid/app/Activity;
    instance-of v4, v0, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 255
    check-cast v2, Landroid/content/Intent;

    .line 260
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "source_change"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    .local v1, bIsSourceChange:Z
    if-nez v1, :cond_0

    move-object v3, v0

    .line 265
    check-cast v3, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;

    .line 266
    .local v3, sceneFactory:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;
    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->removeAllScene()Z

    .line 268
    invoke-interface {v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;->onCreateScene(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private onInterruptRemoveAllScene()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xd

    .line 208
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->isDisplayControlBusy()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 213
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptRemoveAllScene]: busy try again later: 1000"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/16 v2, 0x3e8

    invoke-virtual {p0, v3, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    .line 230
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptRemoveAllScene]: delayed dstroy... "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 234
    iput-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeInterrupt][onInterruptRemoveAllScene]: removeAllScene... "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    .line 220
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->removeAllScene()Z

    .line 225
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method private onUIStateInterrupted(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 117
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    .line 118
    .local v0, nType:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeInterrupt][onUIStateInterrupted]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$2;->$SwitchMap$com$htc$sunny2$frameworks$base$SunnyScene$SunnySceneChangeInterrupt$INTERRUPT_TYPE:[I

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 123
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onInterruptMediaConnect()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onInterruptMediaDisconnect()V

    goto :goto_0

    .line 129
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onInterruptRemoveAllScene()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v2, 0xd

    .line 53
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    .line 54
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    .line 55
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    .line 59
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-ne v3, v0, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    .line 62
    sget-object v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->REMOVE_ALL_SCENE:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    .line 69
    :goto_0
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mIsDestroyed:Z

    .line 70
    return-void

    .line 66
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 67
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 295
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 300
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onUIStateInterrupted(Landroid/os/Message;)V

    goto :goto_0

    .line 303
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onInterruptNewIntent(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPostInterrupt(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;Ljava/lang/Object;I)V
    .locals 4
    .parameter "nType"
    .parameter "object"
    .parameter "nDelayInMsec"

    .prologue
    .line 73
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 78
    :cond_0
    const/4 v1, -0x1

    .line 79
    .local v1, nMessageID:I
    const/16 v0, 0xbb8

    .line 81
    .local v0, nInterruptTimer:I
    sget-object v2, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$2;->$SwitchMap$com$htc$sunny2$frameworks$base$SunnyScene$SunnySceneChangeInterrupt$INTERRUPT_TYPE:[I

    invoke-virtual {p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$INTERRUPT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 107
    :goto_1
    const/4 v2, -0x1

    if-eq v2, p3, :cond_1

    .line 108
    move v0, p3

    .line 110
    :cond_1
    if-nez p2, :cond_2

    .line 111
    invoke-virtual {p0, v1, p1, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 84
    :pswitch_0
    const/16 v1, 0xa

    .line 85
    goto :goto_1

    .line 87
    :pswitch_1
    const/16 v1, 0xb

    .line 88
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    goto :goto_1

    .line 91
    :pswitch_2
    const/16 v1, 0xc

    .line 92
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    goto :goto_1

    .line 95
    :pswitch_3
    const/16 v1, 0xd

    .line 96
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    goto :goto_1

    .line 99
    :pswitch_4
    const/16 v1, 0xe

    .line 100
    goto :goto_1

    .line 102
    :pswitch_5
    const/16 v1, 0xf

    .line 103
    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onRemoveMessage(I)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {p0, v1, p2, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 318
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 288
    return-void
.end method

.method public setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0
    .parameter "sceneControl"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 47
    return-void
.end method
