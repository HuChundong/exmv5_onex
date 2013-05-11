.class public abstract Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;
.super Ljava/lang/Object;
.source "HtcKeyEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseKeyAction"
.end annotation


# instance fields
.field private final KEY_LONG_PRESSED:I

.field private final KEY_REPEAT_PRESSING:I

.field private final KEY_SHORT_PRESSED:I

.field private final KEY_UNKNOWN:I

.field private final KEY_UNPRESS:I

.field private mActionDone:Z

.field private mKeyPressedBeforeQueueing:Z

.field private mKeyStatus:I

.field private mLastKeyStatus:I

.field private mNeedToBreak:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcKeyEventHandler;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->this$0:Lcom/android/internal/policy/impl/HtcKeyEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_UNKNOWN:I

    .line 137
    iput v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_UNPRESS:I

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_SHORT_PRESSED:I

    .line 139
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_LONG_PRESSED:I

    .line 140
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->KEY_REPEAT_PRESSING:I

    .line 141
    iput v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    .line 142
    iput v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    return-void
.end method

.method private checkKeyStatus(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, statusChanged:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 251
    .local v1, repeatCount:I
    const/4 v0, 0x0

    .line 252
    .local v0, isUnexpectCondition:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 296
    :goto_0
    if-eqz v0, :cond_0

    .line 297
    const-string v3, "HtcKeyEventHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KeyStatus Unexpect Condition: mKeyStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", repeatCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput v6, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    .line 302
    :cond_0
    return v2

    .line 254
    :pswitch_0
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 256
    :pswitch_1
    if-nez v1, :cond_1

    .line 257
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    .line 258
    iput v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    .line 259
    const/4 v2, 0x1

    goto :goto_0

    .line 261
    :cond_1
    const/4 v0, 0x1

    .line 263
    goto :goto_0

    .line 265
    :pswitch_2
    if-ne v1, v4, :cond_2

    .line 266
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    .line 267
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    .line 268
    const/4 v2, 0x1

    goto :goto_0

    .line 270
    :cond_2
    const/4 v0, 0x1

    .line 272
    goto :goto_0

    .line 274
    :pswitch_3
    if-le v1, v4, :cond_3

    .line 275
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    .line 276
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    .line 277
    const/4 v2, 0x1

    goto :goto_0

    .line 279
    :cond_3
    const/4 v0, 0x1

    .line 281
    goto :goto_0

    .line 288
    :pswitch_4
    iget v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    iput v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    .line 289
    iput v6, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    .line 290
    const/4 v2, 0x1

    .line 291
    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 254
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected final breakAction()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    return-void
.end method

.method protected checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method

.method protected checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public final doBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 5
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, delayTime:I
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    .line 199
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkConditionBeforeDispatching(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    move v1, v0

    .line 245
    .end local v0           #delayTime:I
    .local v1, delayTime:I
    :goto_0
    return v1

    .line 211
    .end local v1           #delayTime:I
    .restart local v0       #delayTime:I
    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    .line 214
    invoke-direct {p0, p2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkKeyStatus(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v1, v0

    .line 245
    .end local v0           #delayTime:I
    .restart local v1       #delayTime:I
    goto :goto_0

    .line 217
    .end local v1           #delayTime:I
    .restart local v0       #delayTime:I
    :pswitch_0
    iget v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    if-ne v2, v4, :cond_2

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_1

    .line 222
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mLastKeyStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    goto :goto_1

    .line 232
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressDownBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    .line 233
    goto :goto_1

    .line 237
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    .line 238
    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final doBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 4
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->checkConditionBeforeQueueing(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    move v0, p2

    .line 192
    .end local p2
    .local v0, policyFlags:I
    :goto_0
    return v0

    .line 166
    .end local v0           #policyFlags:I
    .restart local p2
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    .line 169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 187
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "HtcKeyEventHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPressed before queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    move v0, p2

    .line 192
    .end local p2
    .restart local v0       #policyFlags:I
    goto :goto_0

    .line 171
    .end local v0           #policyFlags:I
    .restart local p2
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    .line 172
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressDownBeforeQueue(ILandroid/view/KeyEvent;)I

    move-result p2

    .line 173
    goto :goto_1

    .line 180
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    if-eqz v1, :cond_2

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->shortPressUpBeforeQueue(I)I

    move-result p2

    .line 184
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyPressedBeforeQueueing:Z

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final getAppName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 335
    .local v0, appName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getTopActivityName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 341
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 342
    const-string v2, "com."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 344
    :cond_1
    return-object v0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/internal/policy/impl/HtcKeyEventHandler;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "HtcKeyEventHandler"

    const-string v3, "Unable to query Activity name"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getKeyStatus()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mKeyStatus:I

    return v0
.end method

.method public final isActionDone()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mActionDone:Z

    return v0
.end method

.method protected longPressBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 1
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method protected longPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 1
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public final needToBreak()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/HtcKeyEventHandler$BaseKeyAction;->mNeedToBreak:Z

    return v0
.end method

.method protected shortPressDownBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 1
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method protected shortPressDownBeforeQueue(ILandroid/view/KeyEvent;)I
    .locals 0
    .parameter "result"
    .parameter "keyEvent"

    .prologue
    .line 350
    return p1
.end method

.method protected shortPressUpBeforeDispatch(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .locals 1
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method protected shortPressUpBeforeQueue(I)I
    .locals 0
    .parameter "result"

    .prologue
    .line 351
    return p1
.end method

.method public final translateKeyCode(Landroid/view/KeyEvent;II)Landroid/view/KeyEvent;
    .locals 15
    .parameter "keyEvent"
    .parameter "keyAction"
    .parameter "code"

    .prologue
    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    .line 307
    .local v2, downTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 308
    .local v4, eventTime:J
    move/from16 v6, p2

    .line 309
    .local v6, action:I
    const/4 v8, 0x0

    .line 310
    .local v8, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    .line 311
    .local v9, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    .line 312
    .local v10, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    .line 313
    .local v11, scancode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v13

    .line 314
    .local v13, source:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v14

    .line 321
    .local v14, flags:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move/from16 v0, p3

    if-eq v0, v7, :cond_0

    .line 322
    new-instance v1, Landroid/view/KeyEvent;

    or-int/lit8 v12, v14, 0x8

    move/from16 v7, p3

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 329
    :goto_0
    return-object v1

    :cond_0
    move-object/from16 v1, p1

    goto :goto_0
.end method
