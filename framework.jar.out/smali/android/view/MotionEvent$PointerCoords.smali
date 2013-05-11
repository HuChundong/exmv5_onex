.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3268
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3269
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .parameter "other"

    .prologue
    .line 3277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3278
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3279
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .parameter "size"

    .prologue
    .line 3283
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3284
    .local v0, array:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3285
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3284
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3287
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3392
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3393
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3394
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3395
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3396
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3397
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3398
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3399
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3400
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3401
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x0

    .line 3409
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3410
    .local v0, bits:J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3411
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_2

    .line 3412
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3413
    .local v3, otherValues:[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3414
    .local v2, count:I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3415
    .local v4, values:[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3416
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3417
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3419
    :cond_1
    invoke-static {v3, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3422
    .end local v2           #count:I
    .end local v3           #otherValues:[F
    .end local v4           #values:[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3423
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3424
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3425
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3426
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3427
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3428
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3429
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3430
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3431
    return-void
.end method

.method public getAxisValue(I)F
    .locals 11
    .parameter "axis"

    .prologue
    const-wide/16 v9, 0x1

    .line 3443
    packed-switch p1, :pswitch_data_0

    .line 3463
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 3464
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3445
    :pswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3472
    :goto_0
    return v5

    .line 3447
    :pswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3449
    :pswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3451
    :pswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3453
    :pswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3455
    :pswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3457
    :pswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3459
    :pswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3461
    :pswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3466
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3467
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3468
    .local v0, axisBit:J
    and-long v5, v2, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 3469
    const/4 v5, 0x0

    goto :goto_0

    .line 3471
    :cond_2
    sub-long v5, v0, v9

    and-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3472
    .local v4, index:I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_0

    .line 3443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .parameter "axis"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x1

    const/4 v12, 0x0

    .line 3487
    packed-switch p1, :pswitch_data_0

    .line 3516
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 3517
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 3489
    :pswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3548
    :goto_0
    return-void

    .line 3492
    :pswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3495
    :pswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3498
    :pswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3501
    :pswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3504
    :pswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3507
    :pswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3510
    :pswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3513
    :pswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3519
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3520
    .local v2, bits:J
    shl-long v0, v9, p1

    .line 3521
    .local v0, axisBit:J
    sub-long v8, v0, v9

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 3522
    .local v5, index:I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3523
    .local v7, values:[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 3524
    if-nez v7, :cond_4

    .line 3525
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 3526
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3543
    :cond_2
    :goto_1
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3545
    :cond_3
    aput p2, v7, v5

    goto :goto_0

    .line 3528
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3529
    .local v4, count:I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 3530
    if-eq v5, v4, :cond_2

    .line 3531
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3535
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 3536
    .local v6, newValues:[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3537
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3539
    move-object v7, v6

    .line 3540
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_1

    .line 3487
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
