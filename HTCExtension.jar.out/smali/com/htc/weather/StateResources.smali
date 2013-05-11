.class public Lcom/htc/weather/StateResources;
.super Ljava/lang/Object;
.source "StateResources.java"


# static fields
.field private static final RESOURCE_PACKAGENAME:Ljava/lang/String; = "com.htc.weather.res"

.field private static conditions:[Ljava/lang/String;

.field private static mRes:Landroid/content/res/Resources;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/weather/StateResources;->mSync:Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "StateResources"

    iput-object v0, p0, Lcom/htc/weather/StateResources;->TAG:Ljava/lang/String;

    return-void
.end method

.method private ensureWeatherResources(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    sget-object v2, Lcom/htc/weather/StateResources;->mSync:Ljava/lang/Object;

    monitor-enter v2

    .line 42
    :try_start_0
    sget-object v1, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 44
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.htc.weather.res"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 52
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "StateResources"

    const-string v3, "!! can not find resource from com.htc.weather.res"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 47
    :catch_1
    move-exception v0

    .line 48
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    const-string v1, "StateResources"

    const-string v3, "resource not found!"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public Huafeng2ACCU(I)I
    .locals 1
    .parameter "conditionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 677
    :goto_0
    return v0

    .line 569
    :pswitch_0
    const/4 v0, 0x1

    .line 570
    goto :goto_0

    .line 572
    :pswitch_1
    const/4 v0, 0x6

    .line 573
    goto :goto_0

    .line 575
    :pswitch_2
    const/16 v0, 0x8

    .line 576
    goto :goto_0

    .line 578
    :pswitch_3
    const/16 v0, 0x12

    .line 579
    goto :goto_0

    .line 581
    :pswitch_4
    const/16 v0, 0xf

    .line 582
    goto :goto_0

    .line 584
    :pswitch_5
    const/16 v0, 0x33

    .line 585
    goto :goto_0

    .line 587
    :pswitch_6
    const/16 v0, 0x1d

    .line 588
    goto :goto_0

    .line 590
    :pswitch_7
    const/16 v0, 0xe

    .line 591
    goto :goto_0

    .line 593
    :pswitch_8
    const/16 v0, 0xd

    .line 594
    goto :goto_0

    .line 596
    :pswitch_9
    const/16 v0, 0x12

    .line 597
    goto :goto_0

    .line 599
    :pswitch_a
    const/16 v0, 0xf

    .line 600
    goto :goto_0

    .line 602
    :pswitch_b
    const/16 v0, 0x16

    .line 603
    goto :goto_0

    .line 605
    :pswitch_c
    const/16 v0, 0x16

    .line 606
    goto :goto_0

    .line 608
    :pswitch_d
    const/16 v0, 0x17

    .line 609
    goto :goto_0

    .line 611
    :pswitch_e
    const/16 v0, 0x15

    .line 612
    goto :goto_0

    .line 614
    :pswitch_f
    const/16 v0, 0x13

    .line 615
    goto :goto_0

    .line 617
    :pswitch_10
    const/16 v0, 0x16

    .line 618
    goto :goto_0

    .line 620
    :pswitch_11
    const/16 v0, 0x16

    .line 621
    goto :goto_0

    .line 623
    :pswitch_12
    const/16 v0, 0xb

    .line 624
    goto :goto_0

    .line 626
    :pswitch_13
    const/16 v0, 0x1a

    .line 627
    goto :goto_0

    .line 629
    :pswitch_14
    const/16 v0, 0x34

    .line 630
    goto :goto_0

    .line 632
    :pswitch_15
    const/16 v0, 0xd

    .line 633
    goto :goto_0

    .line 635
    :pswitch_16
    const/16 v0, 0xf

    .line 636
    goto :goto_0

    .line 638
    :pswitch_17
    const/16 v0, 0xf

    .line 639
    goto :goto_0

    .line 641
    :pswitch_18
    const/16 v0, 0xf

    .line 642
    goto :goto_0

    .line 644
    :pswitch_19
    const/16 v0, 0xf

    .line 645
    goto :goto_0

    .line 647
    :pswitch_1a
    const/16 v0, 0x13

    .line 648
    goto :goto_0

    .line 650
    :pswitch_1b
    const/16 v0, 0x16

    .line 651
    goto :goto_0

    .line 653
    :pswitch_1c
    const/16 v0, 0x16

    .line 654
    goto :goto_0

    .line 656
    :pswitch_1d
    const/16 v0, 0x35

    .line 657
    goto :goto_0

    .line 659
    :pswitch_1e
    const/16 v0, 0x34

    .line 660
    goto :goto_0

    .line 662
    :pswitch_1f
    const/16 v0, 0x34

    .line 663
    goto :goto_0

    .line 665
    :pswitch_20
    const/16 v0, 0x20

    .line 666
    goto :goto_0

    .line 668
    :pswitch_21
    const/16 v0, 0x36

    .line 669
    goto :goto_0

    .line 671
    :pswitch_22
    const/16 v0, 0x13

    .line 672
    goto :goto_0

    .line 674
    :pswitch_23
    const/16 v0, 0xb

    goto :goto_0

    .line 567
    nop

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
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 134
    sput-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 135
    sput-object v0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    .line 136
    return-void
.end method

.method public getConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    :goto_0
    return-object v2

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v1

    .line 68
    .local v1, resId:I
    sget-object v3, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 69
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 80
    :goto_0
    return-object v1

    .line 79
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getConditionResourceId(I)I

    move-result v0

    .line 80
    .local v0, resId:I
    sget-object v1, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v0, 0x502005b

    .line 255
    packed-switch p1, :pswitch_data_0

    .line 349
    :goto_0
    :pswitch_0
    return v0

    .line 257
    :pswitch_1
    const v0, 0x5020055

    goto :goto_0

    .line 259
    :pswitch_2
    const v0, 0x5020056

    goto :goto_0

    .line 261
    :pswitch_3
    const v0, 0x5020057

    goto :goto_0

    .line 263
    :pswitch_4
    const v0, 0x5020058

    goto :goto_0

    .line 265
    :pswitch_5
    const v0, 0x5020059

    goto :goto_0

    .line 267
    :pswitch_6
    const v0, 0x502005a

    goto :goto_0

    .line 271
    :pswitch_7
    const v0, 0x502005c

    goto :goto_0

    .line 274
    :pswitch_8
    const v0, 0x502005d

    goto :goto_0

    .line 276
    :pswitch_9
    const v0, 0x502005e

    goto :goto_0

    .line 278
    :pswitch_a
    const v0, 0x502005f

    goto :goto_0

    .line 280
    :pswitch_b
    const v0, 0x5020060

    goto :goto_0

    .line 282
    :pswitch_c
    const v0, 0x5020061

    goto :goto_0

    .line 284
    :pswitch_d
    const v0, 0x5020062

    goto :goto_0

    .line 286
    :pswitch_e
    const v0, 0x5020063

    goto :goto_0

    .line 288
    :pswitch_f
    const v0, 0x5020064

    goto :goto_0

    .line 290
    :pswitch_10
    const v0, 0x5020065

    goto :goto_0

    .line 292
    :pswitch_11
    const v0, 0x5020066

    goto :goto_0

    .line 294
    :pswitch_12
    const v0, 0x5020067

    goto :goto_0

    .line 296
    :pswitch_13
    const v0, 0x5020068

    goto :goto_0

    .line 298
    :pswitch_14
    const v0, 0x5020069

    goto :goto_0

    .line 300
    :pswitch_15
    const v0, 0x502006a

    goto :goto_0

    .line 302
    :pswitch_16
    const v0, 0x502006b

    goto :goto_0

    .line 304
    :pswitch_17
    const v0, 0x502006c

    goto :goto_0

    .line 307
    :pswitch_18
    const v0, 0x502006d

    goto :goto_0

    .line 309
    :pswitch_19
    const v0, 0x502006e

    goto :goto_0

    .line 311
    :pswitch_1a
    const v0, 0x502006f

    goto :goto_0

    .line 313
    :pswitch_1b
    const v0, 0x5020070

    goto :goto_0

    .line 315
    :pswitch_1c
    const v0, 0x5020071

    goto :goto_0

    .line 317
    :pswitch_1d
    const v0, 0x5020072

    goto :goto_0

    .line 319
    :pswitch_1e
    const v0, 0x5020073

    goto :goto_0

    .line 321
    :pswitch_1f
    const v0, 0x5020074

    goto :goto_0

    .line 323
    :pswitch_20
    const v0, 0x5020075

    goto :goto_0

    .line 325
    :pswitch_21
    const v0, 0x5020076

    goto/16 :goto_0

    .line 327
    :pswitch_22
    const v0, 0x5020077

    goto/16 :goto_0

    .line 329
    :pswitch_23
    const v0, 0x5020078

    goto/16 :goto_0

    .line 332
    :pswitch_24
    const v0, 0x5020079

    goto/16 :goto_0

    .line 334
    :pswitch_25
    const v0, 0x502007a

    goto/16 :goto_0

    .line 336
    :pswitch_26
    const v0, 0x502007b

    goto/16 :goto_0

    .line 338
    :pswitch_27
    const v0, 0x502007c

    goto/16 :goto_0

    .line 341
    :pswitch_28
    const v0, 0x502007d

    goto/16 :goto_0

    .line 343
    :pswitch_29
    const v0, 0x502007e

    goto/16 :goto_0

    .line 345
    :pswitch_2a
    const v0, 0x502007f

    goto/16 :goto_0

    .line 347
    :pswitch_2b
    const v0, 0x5020080

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getConditionText(I)Ljava/lang/String;
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 149
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 150
    const-string v0, ""

    .line 246
    :goto_0
    return-object v0

    .line 152
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 246
    :pswitch_0
    const-string v0, ""

    goto :goto_0

    .line 154
    :pswitch_1
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 156
    :pswitch_2
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 158
    :pswitch_3
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    .line 160
    :pswitch_4
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 162
    :pswitch_5
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    .line 164
    :pswitch_6
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    .line 166
    :pswitch_7
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_0

    .line 168
    :pswitch_8
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_0

    .line 171
    :pswitch_9
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_0

    .line 173
    :pswitch_a
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_0

    .line 175
    :pswitch_b
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto :goto_0

    .line 177
    :pswitch_c
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto :goto_0

    .line 179
    :pswitch_d
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    .line 181
    :pswitch_e
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto :goto_0

    .line 183
    :pswitch_f
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_0

    .line 185
    :pswitch_10
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_0

    .line 187
    :pswitch_11
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_0

    .line 189
    :pswitch_12
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto :goto_0

    .line 191
    :pswitch_13
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 193
    :pswitch_14
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 195
    :pswitch_15
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 197
    :pswitch_16
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 199
    :pswitch_17
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 201
    :pswitch_18
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 204
    :pswitch_19
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 206
    :pswitch_1a
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 208
    :pswitch_1b
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 210
    :pswitch_1c
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 212
    :pswitch_1d
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 214
    :pswitch_1e
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 216
    :pswitch_1f
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 218
    :pswitch_20
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 220
    :pswitch_21
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 222
    :pswitch_22
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x21

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 224
    :pswitch_23
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x22

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 226
    :pswitch_24
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 229
    :pswitch_25
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x24

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 231
    :pswitch_26
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x25

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 233
    :pswitch_27
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x26

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 235
    :pswitch_28
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x27

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 238
    :pswitch_29
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x28

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 240
    :pswitch_2a
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x29

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 242
    :pswitch_2b
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2a

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 244
    :pswitch_2c
    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    const/16 v1, 0x2b

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method

.method public getConditionText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strId"

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, val:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 145
    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLargeConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    :goto_0
    return-object v2

    .line 92
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v1

    .line 93
    .local v1, resId:I
    sget-object v3, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 94
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLargeConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "conditionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    const/4 v1, 0x0

    .line 109
    :goto_0
    return-object v1

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getLargeConditionResourceId(I)I

    move-result v0

    .line 109
    .local v0, resId:I
    sget-object v1, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getLargeConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v0, 0x5020006

    .line 461
    packed-switch p1, :pswitch_data_0

    .line 555
    :goto_0
    :pswitch_0
    return v0

    .line 463
    :pswitch_1
    const/high16 v0, 0x502

    goto :goto_0

    .line 465
    :pswitch_2
    const v0, 0x5020001

    goto :goto_0

    .line 467
    :pswitch_3
    const v0, 0x5020002

    goto :goto_0

    .line 469
    :pswitch_4
    const v0, 0x5020003

    goto :goto_0

    .line 471
    :pswitch_5
    const v0, 0x5020004

    goto :goto_0

    .line 473
    :pswitch_6
    const v0, 0x5020005

    goto :goto_0

    .line 477
    :pswitch_7
    const v0, 0x5020007

    goto :goto_0

    .line 480
    :pswitch_8
    const v0, 0x5020008

    goto :goto_0

    .line 482
    :pswitch_9
    const v0, 0x5020009

    goto :goto_0

    .line 484
    :pswitch_a
    const v0, 0x502000a

    goto :goto_0

    .line 486
    :pswitch_b
    const v0, 0x502000b

    goto :goto_0

    .line 488
    :pswitch_c
    const v0, 0x502000c

    goto :goto_0

    .line 490
    :pswitch_d
    const v0, 0x502000d

    goto :goto_0

    .line 492
    :pswitch_e
    const v0, 0x502000e

    goto :goto_0

    .line 494
    :pswitch_f
    const v0, 0x502000f

    goto :goto_0

    .line 496
    :pswitch_10
    const v0, 0x5020010

    goto :goto_0

    .line 498
    :pswitch_11
    const v0, 0x5020011

    goto :goto_0

    .line 500
    :pswitch_12
    const v0, 0x5020012

    goto :goto_0

    .line 502
    :pswitch_13
    const v0, 0x5020013

    goto :goto_0

    .line 504
    :pswitch_14
    const v0, 0x5020014

    goto :goto_0

    .line 506
    :pswitch_15
    const v0, 0x5020015

    goto :goto_0

    .line 508
    :pswitch_16
    const v0, 0x5020016

    goto :goto_0

    .line 510
    :pswitch_17
    const v0, 0x5020017

    goto :goto_0

    .line 513
    :pswitch_18
    const v0, 0x5020018

    goto :goto_0

    .line 515
    :pswitch_19
    const v0, 0x5020019

    goto :goto_0

    .line 517
    :pswitch_1a
    const v0, 0x502001a

    goto :goto_0

    .line 519
    :pswitch_1b
    const v0, 0x502001b

    goto :goto_0

    .line 521
    :pswitch_1c
    const v0, 0x502001c

    goto :goto_0

    .line 523
    :pswitch_1d
    const v0, 0x502001d

    goto :goto_0

    .line 525
    :pswitch_1e
    const v0, 0x502001e

    goto :goto_0

    .line 527
    :pswitch_1f
    const v0, 0x502001f

    goto :goto_0

    .line 529
    :pswitch_20
    const v0, 0x5020020

    goto :goto_0

    .line 531
    :pswitch_21
    const v0, 0x5020021

    goto/16 :goto_0

    .line 533
    :pswitch_22
    const v0, 0x5020022

    goto/16 :goto_0

    .line 535
    :pswitch_23
    const v0, 0x5020023

    goto/16 :goto_0

    .line 538
    :pswitch_24
    const v0, 0x5020024

    goto/16 :goto_0

    .line 540
    :pswitch_25
    const v0, 0x5020025

    goto/16 :goto_0

    .line 542
    :pswitch_26
    const v0, 0x5020026

    goto/16 :goto_0

    .line 544
    :pswitch_27
    const v0, 0x5020027

    goto/16 :goto_0

    .line 547
    :pswitch_28
    const v0, 0x5020028

    goto/16 :goto_0

    .line 549
    :pswitch_29
    const v0, 0x5020029

    goto/16 :goto_0

    .line 551
    :pswitch_2a
    const v0, 0x502002a

    goto/16 :goto_0

    .line 553
    :pswitch_2b
    const v0, 0x502002b

    goto/16 :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public getSmallConditionIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "conditionId"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return-object v2

    .line 117
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v1

    .line 118
    .local v1, resId:I
    sget-object v3, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 119
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSmallConditionIconBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "conditionId"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/htc/weather/StateResources;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 130
    :goto_0
    return-object v1

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->getSmallConditionResourceId(I)I

    move-result v0

    .line 130
    .local v0, resId:I
    sget-object v1, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getSmallConditionResourceId(I)I
    .locals 1
    .parameter "conditionId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const v0, 0x5020092

    .line 358
    packed-switch p1, :pswitch_data_0

    .line 452
    :goto_0
    :pswitch_0
    return v0

    .line 360
    :pswitch_1
    const v0, 0x502008c

    goto :goto_0

    .line 362
    :pswitch_2
    const v0, 0x502008d

    goto :goto_0

    .line 364
    :pswitch_3
    const v0, 0x502008e

    goto :goto_0

    .line 366
    :pswitch_4
    const v0, 0x502008f

    goto :goto_0

    .line 368
    :pswitch_5
    const v0, 0x5020090

    goto :goto_0

    .line 370
    :pswitch_6
    const v0, 0x5020091

    goto :goto_0

    .line 374
    :pswitch_7
    const v0, 0x5020093

    goto :goto_0

    .line 377
    :pswitch_8
    const v0, 0x5020094

    goto :goto_0

    .line 379
    :pswitch_9
    const v0, 0x5020095

    goto :goto_0

    .line 381
    :pswitch_a
    const v0, 0x5020096

    goto :goto_0

    .line 383
    :pswitch_b
    const v0, 0x5020097

    goto :goto_0

    .line 385
    :pswitch_c
    const v0, 0x5020098

    goto :goto_0

    .line 387
    :pswitch_d
    const v0, 0x5020099

    goto :goto_0

    .line 389
    :pswitch_e
    const v0, 0x502009a

    goto :goto_0

    .line 391
    :pswitch_f
    const v0, 0x502009b

    goto :goto_0

    .line 393
    :pswitch_10
    const v0, 0x502009c

    goto :goto_0

    .line 395
    :pswitch_11
    const v0, 0x502009d

    goto :goto_0

    .line 397
    :pswitch_12
    const v0, 0x502009e

    goto :goto_0

    .line 399
    :pswitch_13
    const v0, 0x502009f

    goto :goto_0

    .line 401
    :pswitch_14
    const v0, 0x50200a0

    goto :goto_0

    .line 403
    :pswitch_15
    const v0, 0x50200a1

    goto :goto_0

    .line 405
    :pswitch_16
    const v0, 0x50200a2

    goto :goto_0

    .line 407
    :pswitch_17
    const v0, 0x50200a3

    goto :goto_0

    .line 410
    :pswitch_18
    const v0, 0x50200a4

    goto :goto_0

    .line 412
    :pswitch_19
    const v0, 0x50200a5

    goto :goto_0

    .line 414
    :pswitch_1a
    const v0, 0x50200a6

    goto :goto_0

    .line 416
    :pswitch_1b
    const v0, 0x50200a7

    goto :goto_0

    .line 418
    :pswitch_1c
    const v0, 0x50200a8

    goto :goto_0

    .line 420
    :pswitch_1d
    const v0, 0x50200a9

    goto :goto_0

    .line 422
    :pswitch_1e
    const v0, 0x50200aa

    goto :goto_0

    .line 424
    :pswitch_1f
    const v0, 0x50200ab

    goto :goto_0

    .line 426
    :pswitch_20
    const v0, 0x50200ac

    goto :goto_0

    .line 428
    :pswitch_21
    const v0, 0x50200ad

    goto/16 :goto_0

    .line 430
    :pswitch_22
    const v0, 0x50200ae

    goto/16 :goto_0

    .line 432
    :pswitch_23
    const v0, 0x50200af

    goto/16 :goto_0

    .line 435
    :pswitch_24
    const v0, 0x50200b0

    goto/16 :goto_0

    .line 437
    :pswitch_25
    const v0, 0x50200b1

    goto/16 :goto_0

    .line 439
    :pswitch_26
    const v0, 0x50200b2

    goto/16 :goto_0

    .line 441
    :pswitch_27
    const v0, 0x50200b3

    goto/16 :goto_0

    .line 444
    :pswitch_28
    const v0, 0x50200b4

    goto/16 :goto_0

    .line 446
    :pswitch_29
    const v0, 0x50200b5

    goto/16 :goto_0

    .line 448
    :pswitch_2a
    const v0, 0x50200b6

    goto/16 :goto_0

    .line 450
    :pswitch_2b
    const v0, 0x50200b7

    goto/16 :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/weather/StateResources;->ensureWeatherResources(Landroid/content/Context;)V

    .line 35
    sget-object v0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    const/high16 v1, 0x207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "isRecreateRes"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/htc/weather/StateResources;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/weather/StateResources;->conditions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
