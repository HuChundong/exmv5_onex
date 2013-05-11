.class public Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;
.super Ljava/lang/Object;
.source "CharacterSetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field static kBig5Ranges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange; = null

.field static kEUCKRRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange; = null

.field public static final kEncodingAll:I = 0x1f

.field public static final kEncodingBig5:I = 0x4

.field public static final kEncodingEUCKR:I = 0x8

.field public static final kEncodingGBK:I = 0x2

.field public static final kEncodingNone:I = 0x0

.field public static final kEncodingShiftJIS:I = 0x1

.field public static final kEncodingUTF_8:I = 0x10

.field static kGBKRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange; = null

.field static kShiftJISRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange; = null

.field private static final scanLength:I = 0x80000


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 21
    const-string v0, "CharacterSetHelper"

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    .line 49
    const/16 v0, 0x66

    new-array v0, v0, [Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    const v1, 0x8140

    const v2, 0x817e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x8180

    const v2, 0x81ac

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x81b8

    const v2, 0x81bf

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x81c8

    const v2, 0x81ce

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x81da

    const v2, 0x81e8

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const v2, 0x81f0

    const v3, 0x81f7

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x81fc

    const v3, 0x81fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x824f

    const v3, 0x8258

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8260

    const v3, 0x8279

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x8281

    const v3, 0x829a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x829f

    const v3, 0x82f1

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x8340

    const v3, 0x837e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x8380

    const v3, 0x8396

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x839f

    const v3, 0x83b6

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x83bf

    const v3, 0x83d6

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x8440

    const v3, 0x8460

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x8470

    const v3, 0x847e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x8480

    const v3, 0x8491

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x849f

    const v3, 0x84be

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x8740

    const v3, 0x875d

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x875f

    const v3, 0x8775

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x877e

    const v3, 0x877e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8780

    const v3, 0x879c

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x889f

    const v3, 0x88fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x8940

    const v3, 0x897e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x8980

    const v3, 0x89fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x8a40

    const v3, 0x8a7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8a80

    const v3, 0x8afc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x8b40

    const v3, 0x8b7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8b80

    const v3, 0x8bfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x8c40

    const v3, 0x8c7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x8c80

    const v3, 0x8cfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x8d40

    const v3, 0x8d7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x8d80

    const v3, 0x8dfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x8e40

    const v3, 0x8e7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x8e80

    const v3, 0x8efc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x8f40

    const v3, 0x8f7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x8f80

    const v3, 0x8ffc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x9040

    const v3, 0x907e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x9080

    const v3, 0x90fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x9140

    const v3, 0x917e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x9180

    const v3, 0x91fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x9240

    const v3, 0x927e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x9280

    const v3, 0x92fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x9340

    const v3, 0x937e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x9380

    const v3, 0x93fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x9440

    const v3, 0x947e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x9480

    const v3, 0x94fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x9540

    const v3, 0x957e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x9580

    const v3, 0x95fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x9640

    const v3, 0x967e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x9680

    const v3, 0x96fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x9740

    const v3, 0x977e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x9780

    const v3, 0x97fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x9840

    const v3, 0x9872

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x989f

    const v3, 0x98fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x9940

    const v3, 0x997e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x9980

    const v3, 0x99fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x9a40

    const v3, 0x9a7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x9a80

    const v3, 0x9afc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x9b40

    const v3, 0x9b7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x9b80

    const v3, 0x9bfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x9c40

    const v3, 0x9c7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x9c80

    const v3, 0x9cfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x9d40

    const v3, 0x9d7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x9d80

    const v3, 0x9dfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x9e40

    const v3, 0x9e7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x9e80

    const v3, 0x9efc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x9f40

    const v3, 0x9f7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x9f80

    const v3, 0x9ffc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xe040

    const v3, 0xe07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xe080

    const v3, 0xe0fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xe140

    const v3, 0xe17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xe180

    const v3, 0xe1fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xe240

    const v3, 0xe27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xe280

    const v3, 0xe2fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xe340

    const v3, 0xe37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0xe380

    const v3, 0xe3fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xe440

    const v3, 0xe47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xe480

    const v3, 0xe4fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const v2, 0xe540

    const v3, 0xe57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const v2, 0xe580

    const v3, 0xe5fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const v2, 0xe640

    const v3, 0xe67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const v2, 0xe680

    const v3, 0xe6fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const v2, 0xe740

    const v3, 0xe77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const v2, 0xe780

    const v3, 0xe7fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const v2, 0xe840

    const v3, 0xe87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xe880

    const v3, 0xe8fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xe940

    const v3, 0xe97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xe980

    const v3, 0xe9fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0xea40

    const v3, 0xea7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xea80

    const v3, 0xeaa4

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0xed40

    const v3, 0xed7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0xed80

    const v3, 0xedfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xee40

    const v3, 0xee7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xee80

    const v3, 0xeeec

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xeeef

    const v3, 0xeefc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xfa40

    const v3, 0xfa7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xfa80

    const v3, 0xfafc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const v2, 0xfb40

    const v3, 0xfb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const v2, 0xfb80

    const v3, 0xfbfc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xfc40

    const v3, 0xfc4b

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kShiftJISRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    .line 154
    const/16 v0, 0x105

    new-array v0, v0, [Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    const v1, 0x8140

    const v2, 0x817e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x8180

    const v2, 0x81fe

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x8240

    const v2, 0x827e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x8280

    const v2, 0x82fe

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x8340

    const v2, 0x837e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const v2, 0x8380

    const v3, 0x83fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x8440

    const v3, 0x847e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x8480

    const v3, 0x84fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8540

    const v3, 0x857e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x8580

    const v3, 0x85fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x8640

    const v3, 0x867e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x8680

    const v3, 0x86fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x8740

    const v3, 0x877e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x8780

    const v3, 0x87fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x8840

    const v3, 0x887e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x8880

    const v3, 0x88fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x8940

    const v3, 0x897e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x8980

    const v3, 0x89fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x8a40

    const v3, 0x8a7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x8a80

    const v3, 0x8afe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8b40

    const v3, 0x8b7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x8b80

    const v3, 0x8bfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8c40

    const v3, 0x8c7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x8c80

    const v3, 0x8cfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x8d40

    const v3, 0x8d7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x8d80

    const v3, 0x8dfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x8e40

    const v3, 0x8e7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8e80

    const v3, 0x8efe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x8f40

    const v3, 0x8f7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8f80

    const v3, 0x8ffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x9040

    const v3, 0x907e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x9080

    const v3, 0x90fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x9140

    const v3, 0x917e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x9180

    const v3, 0x91fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x9240

    const v3, 0x927e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x9280

    const v3, 0x92fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x9340

    const v3, 0x937e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x9380

    const v3, 0x93fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x9440

    const v3, 0x947e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x9480

    const v3, 0x94fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x9540

    const v3, 0x957e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x9580

    const v3, 0x95fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x9640

    const v3, 0x967e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x9680

    const v3, 0x96fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x9740

    const v3, 0x977e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x9780

    const v3, 0x97fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x9840

    const v3, 0x987e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x9880

    const v3, 0x98fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x9940

    const v3, 0x997e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x9980

    const v3, 0x99fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x9a40

    const v3, 0x9a7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x9a80

    const v3, 0x9afe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x9b40

    const v3, 0x9b7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x9b80

    const v3, 0x9bfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x9c40

    const v3, 0x9c7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x9c80

    const v3, 0x9cfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x9d40

    const v3, 0x9d7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x9d80

    const v3, 0x9dfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x9e40

    const v3, 0x9e7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x9e80

    const v3, 0x9efe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x9f40

    const v3, 0x9f7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x9f80

    const v3, 0x9ffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xa040

    const v3, 0xa07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0xa080

    const v3, 0xa0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xa1a1

    const v3, 0xa1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xa2a1

    const v3, 0xa2aa

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xa2b1

    const v3, 0xa2e2

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xa2e5

    const v3, 0xa2ee

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xa2f1

    const v3, 0xa2fc

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const v2, 0xa3a1

    const v3, 0xa3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xa4a1

    const v3, 0xa4f3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xa5a1

    const v3, 0xa5f6

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xa6a1

    const v3, 0xa6b8

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xa6c1

    const v3, 0xa6d8

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa6e0

    const v3, 0xa6eb

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xa6ee

    const v3, 0xa6f2

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xa6f4

    const v3, 0xa6f5

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0xa7a1

    const v3, 0xa7c1

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xa7d1

    const v3, 0xa7f1

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xa840

    const v3, 0xa87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const v2, 0xa880

    const v3, 0xa895

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const v2, 0xa8a1

    const v3, 0xa8bb

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const v2, 0xa8bd

    const v3, 0xa8be

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const v2, 0xa8c0

    const v3, 0xa8c0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const v2, 0xa8c5

    const v3, 0xa8e9

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const v2, 0xa940

    const v3, 0xa957

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const v2, 0xa959

    const v3, 0xa95a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xa95c

    const v3, 0xa95c

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xa960

    const v3, 0xa97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xa980

    const v3, 0xa988

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0xa996

    const v3, 0xa996

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xa9a4

    const v3, 0xa9ef

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0xaa40

    const v3, 0xaa7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0xaa80

    const v3, 0xaaa0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xab40

    const v3, 0xab7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xab80

    const v3, 0xaba0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xac40

    const v3, 0xac7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xac80

    const v3, 0xaca0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xad40

    const v3, 0xad7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const v2, 0xad80

    const v3, 0xada0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const v2, 0xae40

    const v3, 0xae7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xae80

    const v3, 0xaea0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const v2, 0xaf40

    const v3, 0xaf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xaf80

    const v3, 0xafa0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xb040

    const v3, 0xb07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xb080

    const v3, 0xb0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0xb140

    const v3, 0xb17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xb180

    const v3, 0xb1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xb240

    const v3, 0xb27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xb280

    const v3, 0xb2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0xb340

    const v3, 0xb37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0xb380

    const v3, 0xb3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xb440

    const v3, 0xb47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xb480

    const v3, 0xb4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xb540

    const v3, 0xb57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xb580

    const v3, 0xb5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xb640

    const v3, 0xb67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xb680

    const v3, 0xb6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xb740

    const v3, 0xb77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xb780

    const v3, 0xb7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xb840

    const v3, 0xb87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xb880

    const v3, 0xb8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xb940

    const v3, 0xb97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xb980

    const v3, 0xb9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xba40

    const v3, 0xba7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xba80

    const v3, 0xbafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xbb40

    const v3, 0xbb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xbb80

    const v3, 0xbbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xbc40

    const v3, 0xbc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xbc80

    const v3, 0xbcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xbd40

    const v3, 0xbd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xbd80

    const v3, 0xbdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xbe40

    const v3, 0xbe7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xbe80

    const v3, 0xbefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xbf40

    const v3, 0xbf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xbf80

    const v3, 0xbffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xc040

    const v3, 0xc07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xc080

    const v3, 0xc0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xc140

    const v3, 0xc17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xc180

    const v3, 0xc1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xc240

    const v3, 0xc27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xc280

    const v3, 0xc2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xc340

    const v3, 0xc37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xc380

    const v3, 0xc3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const v2, 0xc440

    const v3, 0xc47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xc480

    const v3, 0xc4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xc540

    const v3, 0xc57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xc580

    const v3, 0xc5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xc640

    const v3, 0xc67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xc680

    const v3, 0xc6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xc740

    const v3, 0xc77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xc780

    const v3, 0xc7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xc840

    const v3, 0xc87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xc880

    const v3, 0xc8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xc940

    const v3, 0xc97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xc980

    const v3, 0xc9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xca40

    const v3, 0xca7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xca80

    const v3, 0xcafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xcb40

    const v3, 0xcb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xcb80

    const v3, 0xcbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xcc40

    const v3, 0xcc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xcc80

    const v3, 0xccfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xcd40

    const v3, 0xcd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xcd80

    const v3, 0xcdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xce40

    const v3, 0xce7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xce80

    const v3, 0xcefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xcf40

    const v3, 0xcf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xcf80

    const v3, 0xcffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xd040

    const v3, 0xd07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xd080

    const v3, 0xd0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xd140

    const v3, 0xd17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xd180

    const v3, 0xd1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xd240

    const v3, 0xd27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xd280

    const v3, 0xd2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xd340

    const v3, 0xd37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0xd380

    const v3, 0xd3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xd440

    const v3, 0xd47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xd480

    const v3, 0xd4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xd540

    const v3, 0xd57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0xd580

    const v3, 0xd5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0xd640

    const v3, 0xd67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0xd680

    const v3, 0xd6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0xd740

    const v3, 0xd77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0xd780

    const v3, 0xd7f9

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0xd840

    const v3, 0xd87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0xd880

    const v3, 0xd8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const v2, 0xd940

    const v3, 0xd97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0xd980

    const v3, 0xd9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0xda40

    const v3, 0xda7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0xda80

    const v3, 0xdafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0xdb40

    const v3, 0xdb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0xdb80

    const v3, 0xdbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0xdc40

    const v3, 0xdc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0xdc80

    const v3, 0xdcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0xdd40

    const v3, 0xdd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0xdd80

    const v3, 0xddfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0xde40

    const v3, 0xde7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0xde80

    const v3, 0xdefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0xdf40

    const v3, 0xdf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0xdf80

    const v3, 0xdffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0xe040

    const v3, 0xe07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0xe080

    const v3, 0xe0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const v2, 0xe140

    const v3, 0xe17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0xe180

    const v3, 0xe1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0xe240

    const v3, 0xe27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0xe280

    const v3, 0xe2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const v2, 0xe340

    const v3, 0xe37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0xe380

    const v3, 0xe3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0xe440

    const v3, 0xe47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0xe480

    const v3, 0xe4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0xe540

    const v3, 0xe57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0xe580

    const v3, 0xe5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0xe640

    const v3, 0xe67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0xe680

    const v3, 0xe6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0xe740

    const v3, 0xe77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xe780

    const v3, 0xe7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0xe840

    const v3, 0xe87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0xe880

    const v3, 0xe8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const v2, 0xe940

    const v3, 0xe97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0xe980

    const v3, 0xe9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0xea40

    const v3, 0xea7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0xea80

    const v3, 0xeafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const v2, 0xeb40

    const v3, 0xeb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0xeb80

    const v3, 0xebfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0xec40

    const v3, 0xec7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0xec80

    const v3, 0xecfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0xed40

    const v3, 0xed7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0xed80

    const v3, 0xedfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0xee40

    const v3, 0xee7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xee80

    const v3, 0xeefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0xef40

    const v3, 0xef7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0xef80

    const v3, 0xeffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0xf040

    const v3, 0xf07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0xf080

    const v3, 0xf0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const v2, 0xf140

    const v3, 0xf17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0xf180

    const v3, 0xf1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const v2, 0xf240

    const v3, 0xf27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const v2, 0xf280

    const v3, 0xf2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const v2, 0xf340

    const v3, 0xf37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const v2, 0xf380

    const v3, 0xf3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0xf440

    const v3, 0xf47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0xf480

    const v3, 0xf4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xf540

    const v3, 0xf57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xf580

    const v3, 0xf5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0xf640

    const v3, 0xf67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xf680

    const v3, 0xf6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0xf740

    const v3, 0xf77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0xf780

    const v3, 0xf7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0xf840

    const v3, 0xf87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0xf880

    const v3, 0xf8a0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0xf940

    const v3, 0xf97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0xf980

    const v3, 0xf9a0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0xfa40

    const v3, 0xfa7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0xfa80

    const v3, 0xfaa0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0xfb40

    const v3, 0xfb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const v2, 0xfb80

    const v3, 0xfba0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const v2, 0xfc40

    const v3, 0xfc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const v2, 0xfc80

    const v3, 0xfca0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const v2, 0xfd40

    const v3, 0xfd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const v2, 0xfd80

    const v3, 0xfda0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const v2, 0xfe40

    const v3, 0xfe4f

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kGBKRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    .line 418
    const/16 v0, 0x10e

    new-array v0, v0, [Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    const v1, 0x8141

    const v2, 0x815a

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x8161

    const v2, 0x817a

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x8181

    const v2, 0x81fe

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x8241

    const v2, 0x825a

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0x8261

    const v2, 0x827a

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const v2, 0x8281

    const v3, 0x82fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x8341

    const v3, 0x835a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x8361

    const v3, 0x837a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x8381

    const v3, 0x83fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x8441

    const v3, 0x845a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x8461

    const v3, 0x847a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x8481

    const v3, 0x84fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x8541

    const v3, 0x855a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x8561

    const v3, 0x857a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x8581

    const v3, 0x85fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x8641

    const v3, 0x865a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0x8661

    const v3, 0x867a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x8681

    const v3, 0x86fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x8741

    const v3, 0x875a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x8761

    const v3, 0x877a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x8781

    const v3, 0x87fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x8841

    const v3, 0x885a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x8861

    const v3, 0x887a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x8881

    const v3, 0x88fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x8941

    const v3, 0x895a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x8961

    const v3, 0x897a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x8981

    const v3, 0x89fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x8a41

    const v3, 0x8a5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x8a61

    const v3, 0x8a7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x8a81

    const v3, 0x8afe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x8b41

    const v3, 0x8b5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x8b61

    const v3, 0x8b7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0x8b81

    const v3, 0x8bfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0x8c41

    const v3, 0x8c5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x8c61

    const v3, 0x8c7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x8c81

    const v3, 0x8cfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x8d41

    const v3, 0x8d5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x8d61

    const v3, 0x8d7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x8d81

    const v3, 0x8dfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x8e41

    const v3, 0x8e5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0x8e61

    const v3, 0x8e7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0x8e81

    const v3, 0x8efe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x8f41

    const v3, 0x8f5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0x8f61

    const v3, 0x8f7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x8f81

    const v3, 0x8ffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x9041

    const v3, 0x905a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x9061

    const v3, 0x907a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x9081

    const v3, 0x90fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x9141

    const v3, 0x915a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const v2, 0x9161

    const v3, 0x917a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x9181

    const v3, 0x91fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x9241

    const v3, 0x925a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const v2, 0x9261

    const v3, 0x927a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x9281

    const v3, 0x92fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x9341

    const v3, 0x935a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const v2, 0x9361

    const v3, 0x937a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x9381

    const v3, 0x93fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x9441

    const v3, 0x945a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x9461

    const v3, 0x947a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0x9481

    const v3, 0x94fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x9541

    const v3, 0x955a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x9561

    const v3, 0x957a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0x9581

    const v3, 0x95fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x9641

    const v3, 0x965a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x9661

    const v3, 0x967a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const v2, 0x9681

    const v3, 0x96fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x9741

    const v3, 0x975a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x9761

    const v3, 0x977a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const v2, 0x9781

    const v3, 0x97fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x9841

    const v3, 0x985a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x9861

    const v3, 0x987a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x9881

    const v3, 0x98fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x9941

    const v3, 0x995a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x9961

    const v3, 0x997a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0x9981

    const v3, 0x99fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x9a41

    const v3, 0x9a5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0x9a61

    const v3, 0x9a7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x9a81

    const v3, 0x9afe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0x9b41

    const v3, 0x9b5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0x9b61

    const v3, 0x9b7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x9b81

    const v3, 0x9bfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x9c41

    const v3, 0x9c5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x9c61

    const v3, 0x9c7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x9c81

    const v3, 0x9cfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const v2, 0x9d41

    const v3, 0x9d5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const v2, 0x9d61

    const v3, 0x9d7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x9d81

    const v3, 0x9dfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x9e41

    const v3, 0x9e5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x9e61

    const v3, 0x9e7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const v2, 0x9e81

    const v3, 0x9efe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x9f41

    const v3, 0x9f5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x9f61

    const v3, 0x9f7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x9f81

    const v3, 0x9ffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0xa041

    const v3, 0xa05a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xa061

    const v3, 0xa07a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xa081

    const v3, 0xa0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xa141

    const v3, 0xa15a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xa161

    const v3, 0xa17a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xa181

    const v3, 0xa1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const v2, 0xa241

    const v3, 0xa25a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const v2, 0xa261

    const v3, 0xa27a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xa281

    const v3, 0xa2e7

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const v2, 0xa341

    const v3, 0xa35a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xa361

    const v3, 0xa37a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xa381

    const v3, 0xa3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xa441

    const v3, 0xa45a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0xa461

    const v3, 0xa47a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xa481

    const v3, 0xa4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xa541

    const v3, 0xa55a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xa561

    const v3, 0xa57a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0xa581

    const v3, 0xa5aa

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0xa5b0

    const v3, 0xa5b9

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xa5c1

    const v3, 0xa5d8

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xa5e1

    const v3, 0xa5f8

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xa641

    const v3, 0xa65a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xa661

    const v3, 0xa67a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xa681

    const v3, 0xa6e4

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xa741

    const v3, 0xa75a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xa761

    const v3, 0xa77a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xa781

    const v3, 0xa7ef

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xa841

    const v3, 0xa85a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xa861

    const v3, 0xa87a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xa881

    const v3, 0xa8a4

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xa8a6

    const v3, 0xa8a6

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xa8a8

    const v3, 0xa8af

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xa8b1

    const v3, 0xa8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xa941

    const v3, 0xa95a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xa961

    const v3, 0xa97a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xa981

    const v3, 0xa9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xaa41

    const v3, 0xaa5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xaa61

    const v3, 0xaa7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xaa81

    const v3, 0xaaf3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xab41

    const v3, 0xab5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xab61

    const v3, 0xab7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xab81

    const v3, 0xabf6

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xac41

    const v3, 0xac5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xac61

    const v3, 0xac7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xac81

    const v3, 0xacc1

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xacd1

    const v3, 0xacf1

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xad41

    const v3, 0xad5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xad61

    const v3, 0xad7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xad81

    const v3, 0xada0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xae41

    const v3, 0xae5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xae61

    const v3, 0xae7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const v2, 0xae81

    const v3, 0xaea0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xaf41

    const v3, 0xaf5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xaf61

    const v3, 0xaf7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xaf81

    const v3, 0xafa0

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xb041

    const v3, 0xb05a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xb061

    const v3, 0xb07a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xb081

    const v3, 0xb0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xb141

    const v3, 0xb15a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xb161

    const v3, 0xb17a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xb181

    const v3, 0xb1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xb241

    const v3, 0xb25a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xb261

    const v3, 0xb27a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xb281

    const v3, 0xb2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xb341

    const v3, 0xb35a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xb361

    const v3, 0xb37a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xb381

    const v3, 0xb3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xb441

    const v3, 0xb45a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xb461

    const v3, 0xb47a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xb481

    const v3, 0xb4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xb541

    const v3, 0xb55a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xb561

    const v3, 0xb57a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xb581

    const v3, 0xb5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xb641

    const v3, 0xb65a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xb661

    const v3, 0xb67a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xb681

    const v3, 0xb6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xb741

    const v3, 0xb75a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xb761

    const v3, 0xb77a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xb781

    const v3, 0xb7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xb841

    const v3, 0xb85a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xb861

    const v3, 0xb87a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xb881

    const v3, 0xb8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0xb941

    const v3, 0xb95a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xb961

    const v3, 0xb97a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0xb981

    const v3, 0xb9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0xba41

    const v3, 0xba5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0xba61

    const v3, 0xba7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0xba81

    const v3, 0xbafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0xbb41

    const v3, 0xbb5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0xbb61

    const v3, 0xbb7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0xbb81

    const v3, 0xbbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0xbc41

    const v3, 0xbc5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0xbc61

    const v3, 0xbc7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const v2, 0xbc81

    const v3, 0xbcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0xbd41

    const v3, 0xbd5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0xbd61

    const v3, 0xbd7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0xbd81

    const v3, 0xbdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0xbe41

    const v3, 0xbe5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0xbe61

    const v3, 0xbe7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0xbe81

    const v3, 0xbefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0xbf41

    const v3, 0xbf5a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0xbf61

    const v3, 0xbf7a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0xbf81

    const v3, 0xbffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0xc041

    const v3, 0xc05a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0xc061

    const v3, 0xc07a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0xc081

    const v3, 0xc0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0xc141

    const v3, 0xc15a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0xc161

    const v3, 0xc17a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0xc181

    const v3, 0xc1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const v2, 0xc241

    const v3, 0xc25a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0xc261

    const v3, 0xc27a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const v2, 0xc281

    const v3, 0xc2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const v2, 0xc341

    const v3, 0xc35a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const v2, 0xc361

    const v3, 0xc37a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const v2, 0xc381

    const v3, 0xc3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const v2, 0xc441

    const v3, 0xc45a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0xc461

    const v3, 0xc47a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const v2, 0xc481

    const v3, 0xc4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const v2, 0xc541

    const v3, 0xc55a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const v2, 0xc561

    const v3, 0xc57a

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0xc581

    const v3, 0xc5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0xc641

    const v3, 0xc652

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0xc6a1

    const v3, 0xc6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const v2, 0xc7a1

    const v3, 0xc7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0xc8a1

    const v3, 0xc8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const v2, 0xcaa1

    const v3, 0xcafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const v2, 0xcba1

    const v3, 0xcbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const v2, 0xcca1

    const v3, 0xccfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0xcda1

    const v3, 0xcdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const v2, 0xcea1

    const v3, 0xcefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const v2, 0xcfa1

    const v3, 0xcffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0xd0a1

    const v3, 0xd0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0xd1a1

    const v3, 0xd1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const v2, 0xd2a1

    const v3, 0xd2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0xd3a1

    const v3, 0xd3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const v2, 0xd4a1

    const v3, 0xd4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0xd5a1

    const v3, 0xd5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const v2, 0xd6a1

    const v3, 0xd6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const v2, 0xd7a1

    const v3, 0xd7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const v2, 0xd8a1

    const v3, 0xd8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0xd9a1

    const v3, 0xd9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const v2, 0xdaa1

    const v3, 0xdafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0xdba1

    const v3, 0xdbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const v2, 0xdca1

    const v3, 0xdcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const v2, 0xdda1

    const v3, 0xddfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const v2, 0xdea1

    const v3, 0xdefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const v2, 0xdfa1

    const v3, 0xdffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const v2, 0xe0a1

    const v3, 0xe0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const v2, 0xe1a1

    const v3, 0xe1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const v2, 0xe2a1

    const v3, 0xe2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0xe3a1

    const v3, 0xe3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const v2, 0xe4a1

    const v3, 0xe4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0xe5a1

    const v3, 0xe5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const v2, 0xe6a1

    const v3, 0xe6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const v2, 0xe7a1

    const v3, 0xe7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const v2, 0xe8a1

    const v3, 0xe8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const v2, 0xe9a1

    const v3, 0xe9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0xeaa1

    const v3, 0xeafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0xeba1

    const v3, 0xebfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const v2, 0xeca1

    const v3, 0xecfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const v2, 0xeda1

    const v3, 0xedfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const v2, 0xeea1

    const v3, 0xeefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const v2, 0xefa1

    const v3, 0xeffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const v2, 0xf0a1

    const v3, 0xf0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const v2, 0xf1a1

    const v3, 0xf1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const v2, 0xf2a1

    const v3, 0xf2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const v2, 0xf3a1

    const v3, 0xf3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const v2, 0xf4a1

    const v3, 0xf4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const v2, 0xf5a1

    const v3, 0xf5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const v2, 0xf6a1

    const v3, 0xf6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const v2, 0xf7a1

    const v3, 0xf7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const v2, 0xf8a1

    const v3, 0xf8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const v2, 0xf9a1

    const v3, 0xf9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const v2, 0xfaa1

    const v3, 0xfafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const v2, 0xfba1

    const v3, 0xfbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const v2, 0xfca1

    const v3, 0xfcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const v2, 0xfda1

    const v3, 0xfdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kEUCKRRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    .line 691
    const/16 v0, 0xae

    new-array v0, v0, [Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    const v1, 0xa140

    const v2, 0xa17e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0xa1a1

    const v2, 0xa1fe

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0xa240

    const v2, 0xa27e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0xa2a1

    const v2, 0xa2fe

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v7

    const v1, 0xa340

    const v2, 0xa37e

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v1

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const v2, 0xa3a1

    const v3, 0xa3bf

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xa3e1

    const v3, 0xa3e1

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0xa440

    const v3, 0xa47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0xa4a1

    const v3, 0xa4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0xa540

    const v3, 0xa57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0xa5a1

    const v3, 0xa5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0xa640

    const v3, 0xa67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xa6a1

    const v3, 0xa6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xa740

    const v3, 0xa77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xa7a1

    const v3, 0xa7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const v2, 0xa840

    const v3, 0xa87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xa8a1

    const v3, 0xa8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const v2, 0xa940

    const v3, 0xa97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const v2, 0xa9a1

    const v3, 0xa9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const v2, 0xaa40

    const v3, 0xaa7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const v2, 0xaaa1

    const v3, 0xaafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const v2, 0xab40

    const v3, 0xab7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const v2, 0xaba1

    const v3, 0xabfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const v2, 0xac40

    const v3, 0xac7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const v2, 0xaca1

    const v3, 0xacfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const v2, 0xad40

    const v3, 0xad7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0xada1

    const v3, 0xadfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0xae40

    const v3, 0xae7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0xaea1

    const v3, 0xaefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0xaf40

    const v3, 0xaf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0xafa1

    const v3, 0xaffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0xb040

    const v3, 0xb07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xb0a1

    const v3, 0xb0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const v2, 0xb140

    const v3, 0xb17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const v2, 0xb1a1

    const v3, 0xb1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const v2, 0xb240

    const v3, 0xb27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const v2, 0xb2a1

    const v3, 0xb2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const v2, 0xb340

    const v3, 0xb37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const v2, 0xb3a1

    const v3, 0xb3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const v2, 0xb440

    const v3, 0xb47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const v2, 0xb4a1

    const v3, 0xb4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const v2, 0xb540

    const v3, 0xb57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0xb5a1

    const v3, 0xb5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0xb640

    const v3, 0xb67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0xb6a1

    const v3, 0xb6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0xb740

    const v3, 0xb77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0xb7a1

    const v3, 0xb7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0xb840

    const v3, 0xb87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const v2, 0xb8a1

    const v3, 0xb8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const v2, 0xb940

    const v3, 0xb97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const v2, 0xb9a1

    const v3, 0xb9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const v2, 0xba40

    const v3, 0xba7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xbaa1

    const v3, 0xbafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const v2, 0xbb40

    const v3, 0xbb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const v2, 0xbba1

    const v3, 0xbbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xbc40

    const v3, 0xbc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const v2, 0xbca1

    const v3, 0xbcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const v2, 0xbd40

    const v3, 0xbd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0xbda1

    const v3, 0xbdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xbe40

    const v3, 0xbe7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0xbea1

    const v3, 0xbefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0xbf40

    const v3, 0xbf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xbfa1

    const v3, 0xbffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0xc040

    const v3, 0xc07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const v2, 0xc0a1

    const v3, 0xc0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xc140

    const v3, 0xc17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const v2, 0xc1a1

    const v3, 0xc1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const v2, 0xc240

    const v3, 0xc27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xc2a1

    const v3, 0xc2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const v2, 0xc340

    const v3, 0xc37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const v2, 0xc3a1

    const v3, 0xc3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const v2, 0xc440

    const v3, 0xc47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const v2, 0xc4a1

    const v3, 0xc4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const v2, 0xc540

    const v3, 0xc57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xc5a1

    const v3, 0xc5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0xc640

    const v3, 0xc67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xc940

    const v3, 0xc97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0xc9a1

    const v3, 0xc9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xca40

    const v3, 0xca7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xcaa1

    const v3, 0xcafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const v2, 0xcb40

    const v3, 0xcb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const v2, 0xcba1

    const v3, 0xcbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const v2, 0xcc40

    const v3, 0xcc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const v2, 0xcca1

    const v3, 0xccfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const v2, 0xcd40

    const v3, 0xcd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const v2, 0xcda1

    const v3, 0xcdfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const v2, 0xce40

    const v3, 0xce7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const v2, 0xcea1

    const v3, 0xcefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const v2, 0xcf40

    const v3, 0xcf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xcfa1

    const v3, 0xcffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0xd040

    const v3, 0xd07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0xd0a1

    const v3, 0xd0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0xd140

    const v3, 0xd17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0xd1a1

    const v3, 0xd1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0xd240

    const v3, 0xd27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xd2a1

    const v3, 0xd2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const v2, 0xd340

    const v3, 0xd37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const v2, 0xd3a1

    const v3, 0xd3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xd440

    const v3, 0xd47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const v2, 0xd4a1

    const v3, 0xd4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const v2, 0xd540

    const v3, 0xd57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xd5a1

    const v3, 0xd5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const v2, 0xd640

    const v3, 0xd67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xd6a1

    const v3, 0xd6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xd740

    const v3, 0xd77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const v2, 0xd7a1

    const v3, 0xd7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0xd840

    const v3, 0xd87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0xd8a1

    const v3, 0xd8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0xd940

    const v3, 0xd97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0xd9a1

    const v3, 0xd9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0xda40

    const v3, 0xda7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0xdaa1

    const v3, 0xdafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xdb40

    const v3, 0xdb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const v2, 0xdba1

    const v3, 0xdbfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xdc40

    const v3, 0xdc7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const v2, 0xdca1

    const v3, 0xdcfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const v2, 0xdd40

    const v3, 0xdd7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xdda1

    const v3, 0xddfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const v2, 0xde40

    const v3, 0xde7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const v2, 0xdea1

    const v3, 0xdefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xdf40

    const v3, 0xdf7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const v2, 0xdfa1

    const v3, 0xdffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0xe040

    const v3, 0xe07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xe0a1

    const v3, 0xe0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0xe140

    const v3, 0xe17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0xe1a1

    const v3, 0xe1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xe240

    const v3, 0xe27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xe2a1

    const v3, 0xe2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xe340

    const v3, 0xe37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const v2, 0xe3a1

    const v3, 0xe3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xe440

    const v3, 0xe47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const v2, 0xe4a1

    const v3, 0xe4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const v2, 0xe540

    const v3, 0xe57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const v2, 0xe5a1

    const v3, 0xe5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xe640

    const v3, 0xe67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const v2, 0xe6a1

    const v3, 0xe6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xe740

    const v3, 0xe77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const v2, 0xe7a1

    const v3, 0xe7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xe840

    const v3, 0xe87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xe8a1

    const v3, 0xe8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0xe940

    const v3, 0xe97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xe9a1

    const v3, 0xe9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0xea40

    const v3, 0xea7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0xeaa1

    const v3, 0xeafe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const v2, 0xeb40

    const v3, 0xeb7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const v2, 0xeba1

    const v3, 0xebfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xec40

    const v3, 0xec7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xeca1

    const v3, 0xecfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const v2, 0xed40

    const v3, 0xed7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const v2, 0xeda1

    const v3, 0xedfe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xee40

    const v3, 0xee7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const v2, 0xeea1

    const v3, 0xeefe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const v2, 0xef40

    const v3, 0xef7e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const v2, 0xefa1

    const v3, 0xeffe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0xf040

    const v3, 0xf07e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0xf0a1

    const v3, 0xf0fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0xf140

    const v3, 0xf17e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xf1a1

    const v3, 0xf1fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0xf240

    const v3, 0xf27e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0xf2a1

    const v3, 0xf2fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xf340

    const v3, 0xf37e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0xf3a1

    const v3, 0xf3fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0xf440

    const v3, 0xf47e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xf4a1

    const v3, 0xf4fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0xf540

    const v3, 0xf57e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xf5a1

    const v3, 0xf5fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xf640

    const v3, 0xf67e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0xf6a1

    const v3, 0xf6fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0xf740

    const v3, 0xf77e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xf7a1

    const v3, 0xf7fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0xf840

    const v3, 0xf87e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const v2, 0xf8a1

    const v3, 0xf8fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const v2, 0xf940

    const v3, 0xf97e

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xf9a1

    const v3, 0xf9fe

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->newInstance(CC)Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kBig5Ranges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private static charMatchesEncoding(I[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;)Z
    .locals 5
    .parameter "ch"
    .parameter "encodingRanges"

    .prologue
    .line 870
    const/4 v2, 0x0

    .line 871
    .local v2, low:I
    array-length v0, p1

    .line 872
    .local v0, high:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 874
    add-int v4, v2, v0

    div-int/lit8 v1, v4, 0x2

    .line 875
    .local v1, i:I
    aget-object v3, p1, v1

    .line 876
    .local v3, range:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
    iget-char v4, v3, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->first:C

    if-lt p0, v4, :cond_0

    iget-char v4, v3, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->last:C

    if-gt p0, v4, :cond_0

    .line 878
    const/4 v4, 0x1

    .line 889
    .end local v1           #i:I
    .end local v3           #range:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
    :goto_1
    return v4

    .line 880
    .restart local v1       #i:I
    .restart local v3       #range:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
    :cond_0
    iget-char v4, v3, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;->last:C

    if-le p0, v4, :cond_1

    .line 882
    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    .line 886
    :cond_1
    move v0, v1

    goto :goto_0

    .line 889
    .end local v1           #i:I
    .end local v3           #range:Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static findPossibleEncodings(I)I
    .locals 2
    .parameter "ch"

    .prologue
    .line 895
    const/16 v1, 0x100

    if-ge p0, v1, :cond_1

    const/16 v0, 0x1f

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 897
    :cond_1
    const/4 v0, 0x0

    .line 899
    .local v0, result:I
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kShiftJISRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    invoke-static {p0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->charMatchesEncoding(I[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 900
    or-int/lit8 v0, v0, 0x1

    .line 901
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kGBKRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    invoke-static {p0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->charMatchesEncoding(I[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 902
    or-int/lit8 v0, v0, 0x2

    .line 903
    :cond_3
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kBig5Ranges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    invoke-static {p0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->charMatchesEncoding(I[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 904
    or-int/lit8 v0, v0, 0x4

    .line 905
    :cond_4
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->kEUCKRRanges:[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;

    invoke-static {p0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->charMatchesEncoding(I[Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper$CharRange;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    or-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method private isUTF_8([B)Z
    .locals 5
    .parameter "byteArray"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 936
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v4, "[isUTF_8]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    move v0, v2

    .line 973
    :goto_0
    return v0

    .line 941
    :cond_1
    array-length v3, p1

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    .line 944
    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    const/16 v3, 0xef

    if-ne v2, v3, :cond_2

    aget-byte v2, p1, v0

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    const/16 v3, 0xbb

    if-ne v2, v3, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    .line 946
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v3, "[isUTF_8] file has BOM header"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_2
    const/4 v1, 0x0

    .line 955
    .local v1, nIndex:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-byte v2, p1, v1

    invoke-static {v2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_3

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 963
    :cond_3
    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 965
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v3, "[isUTF_8] All ascii characters"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 969
    :cond_4
    const/4 v0, 0x0

    .line 971
    .local v0, bRet:Z
    invoke-virtual {p0, v1, p1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isNonBomUTF8(I[B)Z

    move-result v0

    .line 973
    goto :goto_0
.end method

.method private static possibleEncodings([B)I
    .locals 7
    .parameter "array"

    .prologue
    .line 913
    const/16 v4, 0x1f

    .line 917
    .local v4, nResult:I
    const/4 v3, 0x0

    .line 919
    .local v3, nIndex:I
    :cond_0
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 921
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v1

    .line 922
    .local v1, ch1:I
    add-int/lit8 v3, v3, 0x1

    .line 923
    const/16 v5, 0x80

    and-int/lit16 v6, v1, 0x80

    if-ne v5, v6, :cond_0

    .line 925
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    .line 926
    .local v2, ch2:I
    add-int/lit8 v3, v3, 0x1

    .line 927
    shl-int/lit8 v5, v1, 0x8

    or-int v0, v5, v2

    .line 928
    .local v0, ch:I
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->findPossibleEncodings(I)I

    move-result v5

    and-int/2addr v4, v5

    .line 929
    goto :goto_0

    .line 931
    .end local v0           #ch:I
    .end local v1           #ch1:I
    .end local v2           #ch2:I
    :cond_1
    return v4
.end method

.method public static unsignedByteToInt(B)I
    .locals 1
    .parameter "b"

    .prologue
    .line 1151
    and-int/lit16 v0, p0, 0xff

    .line 1152
    .local v0, r:I
    return v0
.end method


# virtual methods
.method public checkEncodeFormat(Ljava/lang/String;)I
    .locals 11
    .parameter "subtitlePath"

    .prologue
    .line 1065
    const/4 v6, 0x0

    .line 1066
    .local v6, nResult:I
    if-eqz p1, :cond_0

    const-string v8, ""

    if-ne p1, v8, :cond_1

    :cond_0
    move v7, v6

    .line 1146
    .end local v6           #nResult:I
    .local v7, nResult:I
    :goto_0
    return v7

    .line 1071
    .end local v7           #nResult:I
    .restart local v6       #nResult:I
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v2, f:Ljava/io/File;
    const/4 v3, 0x0

    .line 1073
    .local v3, in:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v5, v8

    .line 1075
    .local v5, length:I
    if-nez v5, :cond_2

    move v7, v6

    .line 1077
    .end local v6           #nResult:I
    .restart local v7       #nResult:I
    goto :goto_0

    .line 1080
    .end local v7           #nResult:I
    .restart local v6       #nResult:I
    :cond_2
    const/high16 v8, 0x8

    if-le v5, v8, :cond_3

    .line 1082
    const/high16 v5, 0x8

    .line 1085
    :cond_3
    const/4 v0, 0x0

    .line 1088
    .local v0, byteArray:[B
    :try_start_0
    new-array v0, v5, [B

    .line 1089
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1090
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v8, v5}, Ljava/io/InputStream;->read([BII)I

    .line 1091
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isUTF_8([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v8

    if-eqz v8, :cond_6

    .line 1093
    const/16 v6, 0x10

    .line 1109
    :goto_1
    if-eqz v4, :cond_4

    .line 1110
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v3, v4

    .line 1119
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :cond_5
    :goto_2
    sparse-switch v6, :sswitch_data_0

    .line 1143
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[checkEncodeFormat] : nResult = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v7, v6

    .line 1146
    .end local v6           #nResult:I
    .restart local v7       #nResult:I
    goto :goto_0

    .line 1097
    .end local v3           #in:Ljava/io/InputStream;
    .end local v7           #nResult:I
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #nResult:I
    :cond_6
    :try_start_3
    invoke-static {v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->possibleEncodings([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v6

    goto :goto_1

    .line 1112
    :catch_0
    move-exception v1

    .line 1114
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    .line 1116
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 1100
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1102
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_4
    :try_start_4
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "checkEncodeFormat exception "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1109
    if-eqz v3, :cond_5

    .line 1110
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 1112
    :catch_2
    move-exception v1

    .line 1114
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1107
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1109
    :goto_5
    if-eqz v3, :cond_7

    .line 1110
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1115
    :cond_7
    :goto_6
    throw v8

    .line 1112
    :catch_3
    move-exception v1

    .line 1114
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1122
    .end local v1           #e:Ljava/lang/Exception;
    :sswitch_0
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingNone"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1125
    :sswitch_1
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingShiftJIS"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1128
    :sswitch_2
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingGBK"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1131
    :sswitch_3
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingBig5"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1134
    :sswitch_4
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingEUCKR"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1137
    :sswitch_5
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingUTF_8"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1140
    :sswitch_6
    sget-object v8, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v9, "[checkEncodeFormat] : kEncodingAll"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1107
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_5

    .line 1100
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_4

    .line 1119
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0x10 -> :sswitch_5
        0x1f -> :sswitch_6
    .end sparse-switch
.end method

.method isMatchUTF8WordGroup(II[B)Z
    .locals 6
    .parameter "nNum"
    .parameter "nIndex"
    .parameter "byteArray"

    .prologue
    .line 1039
    const/4 v3, 0x0

    .line 1040
    .local v3, n:I
    const/4 v0, 0x0

    .line 1043
    .local v0, bRet:Z
    add-int v4, p2, p1

    array-length v5, p3

    if-le v4, v5, :cond_0

    move v1, v0

    .line 1060
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1046
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_2

    .line 1048
    add-int v4, p2, v3

    aget-byte v4, p3, v4

    invoke-static {v4}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    .line 1050
    .local v2, ch:I
    shr-int/lit8 v4, v2, 0x6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1052
    const/4 v0, 0x1

    .line 1046
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1056
    :cond_1
    const/4 v0, 0x0

    .end local v2           #ch:I
    :cond_2
    move v1, v0

    .line 1060
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method isNonBomUTF8(I[B)Z
    .locals 5
    .parameter "nIndex"
    .parameter "byteArray"

    .prologue
    .line 978
    const/4 v0, 0x1

    .line 980
    .local v0, bRet:Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 982
    array-length v3, p2

    if-lt p1, v3, :cond_3

    .line 1029
    :cond_1
    if-eqz v0, :cond_2

    .line 1031
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v4, "[isUTF_8] is non bom UTF-8"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_2
    return v0

    .line 987
    :cond_3
    aget-byte v1, p2, p1

    .line 988
    .local v1, ch1:B
    invoke-static {v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->unsignedByteToInt(B)I

    move-result v2

    .line 989
    .local v2, nCh:I
    add-int/lit8 p1, p1, 0x1

    .line 992
    const/16 v3, 0xfe

    and-int/lit16 v4, v2, 0xfe

    if-ne v3, v4, :cond_4

    .line 994
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->TAG:Ljava/lang/String;

    const-string v4, "[isUTF_8] wrong UTF-8 char group"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const/4 v0, 0x0

    goto :goto_0

    .line 1002
    :cond_4
    const/16 v3, 0xfc

    and-int/lit16 v4, v2, 0xfc

    if-ne v3, v4, :cond_5

    .line 1004
    const/4 v3, 0x5

    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isMatchUTF8WordGroup(II[B)Z

    move-result v0

    .line 1005
    add-int/lit8 p1, p1, 0x5

    goto :goto_0

    .line 1007
    :cond_5
    const/16 v3, 0xf8

    and-int/lit16 v4, v2, 0xf8

    if-ne v3, v4, :cond_6

    .line 1009
    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isMatchUTF8WordGroup(II[B)Z

    move-result v0

    .line 1010
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 1012
    :cond_6
    const/16 v3, 0xf0

    and-int/lit16 v4, v2, 0xf0

    if-ne v3, v4, :cond_7

    .line 1014
    const/4 v3, 0x3

    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isMatchUTF8WordGroup(II[B)Z

    move-result v0

    .line 1015
    add-int/lit8 p1, p1, 0x3

    goto :goto_0

    .line 1017
    :cond_7
    const/16 v3, 0xe0

    and-int/lit16 v4, v2, 0xe0

    if-ne v3, v4, :cond_8

    .line 1019
    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isMatchUTF8WordGroup(II[B)Z

    move-result v0

    .line 1020
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1022
    :cond_8
    const/16 v3, 0xc0

    and-int/lit16 v4, v2, 0xc0

    if-ne v3, v4, :cond_0

    .line 1024
    const/4 v3, 0x1

    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/videowidget/videoview/utilities/subtitle/CharacterSetHelper;->isMatchUTF8WordGroup(II[B)Z

    move-result v0

    .line 1025
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
