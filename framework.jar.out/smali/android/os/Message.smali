.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = 0x1

.field static final FLAG_ASYNCHRONOUS:I = 0x2

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field public expressNo:J

.field flags:I

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 508
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 436
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .locals 3

    .prologue
    .line 112
    sget-object v2, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 113
    :try_start_0
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 114
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 115
    .local v0, m:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 116
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 117
    sget v1, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->sPoolSize:I

    .line 118
    monitor-exit v2

    .line 121
    .end local v0           #m:Landroid/os/Message;
    :goto_0
    return-object v0

    .line 120
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_0

    .line 120
    .restart local v0       #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1
    .parameter "h"

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 155
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 183
    iput p1, v0, Landroid/os/Message;->what:I

    .line 185
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 217
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 218
    iput p1, v0, Landroid/os/Message;->what:I

    .line 219
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 220
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 222
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 238
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 239
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 240
    iput p1, v0, Landroid/os/Message;->what:I

    .line 241
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 242
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 243
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 198
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 199
    iput p1, v0, Landroid/os/Message;->what:I

    .line 200
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 202
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "callback"

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 168
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 170
    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .parameter "orig"

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 133
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 134
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 135
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 136
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 137
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 138
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 140
    :cond_0
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 141
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 143
    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 557
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 558
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 559
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 560
    return-void
.end method


# virtual methods
.method clearForRecycle()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 411
    iput v1, p0, Landroid/os/Message;->flags:I

    .line 412
    iput v1, p0, Landroid/os/Message;->what:I

    .line 413
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 414
    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 415
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 416
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 417
    iput-wide v2, p0, Landroid/os/Message;->when:J

    .line 418
    iput-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 419
    iput-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 420
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 422
    iput-wide v2, p0, Landroid/os/Message;->expressNo:J

    .line 423
    return-void
.end method

.method public copyFrom(Landroid/os/Message;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 271
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 273
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 274
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 275
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 278
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method public isAsynchronous()Z
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInUse()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 426
    iget v1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markInUse()V
    .locals 1

    .prologue
    .line 430
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 431
    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Landroid/os/Message;->clearForRecycle()V

    .line 256
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    sget v0, Landroid/os/Message;->sPoolSize:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    .line 258
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 259
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 260
    sget v0, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 262
    :cond_0
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendToTarget()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    return-void
.end method

.method public setAsynchronous(Z)V
    .locals 1
    .parameter "async"

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget v0, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/os/Message;->flags:I

    goto :goto_0
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 357
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 358
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 293
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Message;->toString(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(J)Ljava/lang/String;
    .locals 1
    .parameter "now"

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Message;->toString(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(JZ)Ljava/lang/String;
    .locals 4
    .parameter "now"
    .parameter "inQueue"

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v0, b:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "{ what="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 457
    const-string v2, " when="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-wide v2, p0, Landroid/os/Message;->when:J

    sub-long/2addr v2, p1

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 460
    const/4 v1, 0x1

    .line 461
    .local v1, noToken:Z
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v2, :cond_6

    .line 462
    if-eqz p3, :cond_0

    .line 463
    const-string v2, " target=null (SyncBarrier)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v2, " token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    const/4 v1, 0x0

    .line 478
    :cond_0
    :goto_0
    iget v2, p0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 480
    const-string v2, " arg1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    :cond_1
    iget v2, p0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    .line 485
    const-string v2, " arg2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    :cond_2
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 490
    const-string v2, " obj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    :cond_3
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 495
    const-string v2, " callback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 499
    :cond_4
    invoke-virtual {p0}, Landroid/os/Message;->isAsynchronous()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 500
    const-string v2, " isAsync=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    :cond_5
    const-string v2, " }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 469
    :cond_6
    const-string v2, " target="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iget-object v2, v2, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    if-eqz v2, :cond_0

    .line 473
    const-string v2, " mCallback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    iget-object v2, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iget-object v2, v2, Landroid/os/Handler;->mCallback:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 526
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 527
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal callbacks across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 530
    :cond_0
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 535
    :try_start_0
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 536
    .local v1, p:Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    .end local v1           #p:Landroid/os/Parcelable;
    :goto_0
    iget-wide v2, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 546
    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 547
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 548
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 543
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
