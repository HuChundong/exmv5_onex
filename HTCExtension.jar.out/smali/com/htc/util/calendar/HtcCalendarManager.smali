.class public Lcom/htc/util/calendar/HtcCalendarManager;
.super Ljava/lang/Object;
.source "HtcCalendarManager.java"

# interfaces
.implements Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;


# static fields
.field private static final ADD_ALPHA_MASK:I = -0x1000000

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final B_MASK:I = 0xff

.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final COLOR_MATRIX_RES:[I = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final DELETE_ALL:I = 0x2

.field public static final DELETE_ALL_FOLLOWING:I = 0x1

.field public static final DELETE_SELECTED:I = 0x0

.field private static final Distance:I = 0x96

.field public static final EXTRA_EVENT_URI:Ljava/lang/String; = "com.htc.calendar.event_uri"

.field private static final G_MASK:I = 0xff00

.field private static final MSG_UI_UPDATE_PROGRESSBAR:I = 0x1

.field private static final RESTORE_TYPE_KEEP_PHONE_CALENDAR:I = 0x1

.field private static final RESTORE_TYPE_SD_CALENDAR:I = 0x2

.field private static final R_MASK:I = 0xff0000

.field private static final TAG:Ljava/lang/String; = "HtcCalendarManager"

.field private static final color1:I = 0xd06b64

.field private static final color10:I = 0xb3dc6c

.field private static final color11:I = 0xb2b43d

.field private static final color12:I = 0xfbe983

.field private static final color13:I = 0xffad46

.field private static final color14:I = 0xff7537

.field private static final color15:I = 0xcca6ac

.field private static final color16:I = 0xb99aff

.field private static final color17:I = 0x768594

.field private static final color18:I = 0x9fc6e7

.field private static final color19:I = 0x739b94

.field private static final color2:I = 0xf691b2

.field private static final color20:I = 0x96986a

.field private static final color21:I = 0xb79870

.field private static final color22:I = 0xb94118

.field private static final color23:I = 0xf83a22

.field private static final color24:I = 0xb3289b

.field private static final color25:I = 0xa47ae2

.field private static final color26:I = 0x425795

.field private static final color27:I = 0x282a9d

.field private static final color28:I = 0x16a765

.field private static final color29:I = 0x4c9926

.field private static final color3:I = 0xcd74e6

.field private static final color30:I = 0x7bd148

.field private static final color31:I = 0x97ad1f

.field private static final color32:I = 0xc38810

.field private static final color33:I = 0xc86b18

.field private static final color34:I = 0xac725e

.field private static final color35:I = 0x7d3b11

.field private static final color36:I = 0x99105e

.field private static final color37:I = 0x9a9cff

.field private static final color38:I = 0x9fe1e7

.field private static final color39:I = 0xcabdbf

.field private static final color4:I = 0x784bd0

.field private static final color40:I = 0x369774

.field private static final color41:I = 0xfad165

.field private static final color42:I = 0x9b1c22

.field private static final color5:I = 0x4986e7

.field private static final color6:I = 0x5476d0

.field private static final color7:I = 0x42d692

.field private static final color8:I = 0x92e1c0

.field private static final color9:I = 0x40a441

.field private static final colorMappingToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static me:Lcom/htc/util/calendar/HtcCalendarManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/util/calendar/HtcCalendarManager;->DEBUG:Z

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    .line 402
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xd06b64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xf691b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xcd74e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x784bd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x4986e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x5476d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x42d692

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x92e1c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x40a441

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb3dc6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb2b43d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xfbe983

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xffad46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xff7537

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xcca6ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb99aff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x768594

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9fc6e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x739b94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x96986a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb79870

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb94118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xf83a22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xb3289b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xa47ae2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x425795

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x282a9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x16a765

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x4c9926

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x7bd148

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x97ad1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xc38810

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xc86b18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xac725e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x21

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x7d3b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x99105e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9a9cff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9fe1e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xcabdbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x26

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x369774

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x27

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0xfad165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    const v1, 0x9b1c22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x29

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const/16 v0, 0x2a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->COLOR_MATRIX_RES:[I

    .line 740
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 446
    nop

    :array_0
    .array-data 0x4
        0x64t 0x6bt 0xd0t 0x0t
        0xb2t 0x91t 0xf6t 0x0t
        0xe6t 0x74t 0xcdt 0x0t
        0xd0t 0x4bt 0x78t 0x0t
        0xe7t 0x86t 0x49t 0x0t
        0xd0t 0x76t 0x54t 0x0t
        0x92t 0xd6t 0x42t 0x0t
        0xc0t 0xe1t 0x92t 0x0t
        0x41t 0xa4t 0x40t 0x0t
        0x6ct 0xdct 0xb3t 0x0t
        0x3dt 0xb4t 0xb2t 0x0t
        0x83t 0xe9t 0xfbt 0x0t
        0x46t 0xadt 0xfft 0x0t
        0x37t 0x75t 0xfft 0x0t
        0xact 0xa6t 0xcct 0x0t
        0xfft 0x9at 0xb9t 0x0t
        0x94t 0x85t 0x76t 0x0t
        0xe7t 0xc6t 0x9ft 0x0t
        0x94t 0x9bt 0x73t 0x0t
        0x6at 0x98t 0x96t 0x0t
        0x70t 0x98t 0xb7t 0x0t
        0x18t 0x41t 0xb9t 0x0t
        0x22t 0x3at 0xf8t 0x0t
        0x9bt 0x28t 0xb3t 0x0t
        0xe2t 0x7at 0xa4t 0x0t
        0x95t 0x57t 0x42t 0x0t
        0x9dt 0x2at 0x28t 0x0t
        0x65t 0xa7t 0x16t 0x0t
        0x26t 0x99t 0x4ct 0x0t
        0x48t 0xd1t 0x7bt 0x0t
        0x1ft 0xadt 0x97t 0x0t
        0x10t 0x88t 0xc3t 0x0t
        0x18t 0x6bt 0xc8t 0x0t
        0x5et 0x72t 0xact 0x0t
        0x11t 0x3bt 0x7dt 0x0t
        0x5et 0x10t 0x99t 0x0t
        0xfft 0x9ct 0x9at 0x0t
        0xe7t 0xe1t 0x9ft 0x0t
        0xbft 0xbdt 0xcat 0x0t
        0x74t 0x97t 0x36t 0x0t
        0x65t 0xd1t 0xfat 0x0t
        0x22t 0x1ct 0x9bt 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HtcCalendarManager contruct by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 72
    :goto_0
    iput-object p1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 74
    return-void

    .line 70
    :cond_0
    const-string v0, "HtcCalendarManager contruct by null??"

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private Debug(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 816
    sget-boolean v0, Lcom/htc/util/calendar/HtcCalendarManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 817
    if-eqz p1, :cond_0

    const-string v0, "HtcCalendarManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    return-void
.end method

.method private compareColor(IIIIII)D
    .locals 28
    .parameter "r1"
    .parameter "g1"
    .parameter "b1"
    .parameter "r2"
    .parameter "g2"
    .parameter "b2"

    .prologue
    .line 384
    const-wide v22, 0x3fd322d0e5604189L

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x3fe2c8b439581062L

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fbd2f1a9fbe76c9L

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v18, v22, v24

    .line 385
    .local v18, y1:D
    const-wide v22, -0x403d2ad81adea897L

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x402d835158b827faL

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fdbe76c8b439581L

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v10, v22, v24

    .line 386
    .local v10, u1:D
    const-wide v22, 0x3fe3ae147ae147aeL

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x401f8533b1077469L

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x404665bea0ba1f4bL

    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v14, v22, v24

    .line 389
    .local v14, v1:D
    const-wide v22, 0x3fd322d0e5604189L

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, 0x3fe2c8b439581062L

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fbd2f1a9fbe76c9L

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v20, v22, v24

    .line 390
    .local v20, y2:D
    const-wide v22, -0x403d2ad81adea897L

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x402d835158b827faL

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, 0x3fdbe76c8b439581L

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v12, v22, v24

    .line 391
    .local v12, u2:D
    const-wide v22, 0x3fe3ae147ae147aeL

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    const-wide v24, -0x401f8533b1077469L

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    const-wide v24, -0x404665bea0ba1f4bL

    move/from16 v0, p6

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v16, v22, v24

    .line 393
    .local v16, v2:D
    sub-double v22, v18, v20

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 394
    .local v6, diff_y:D
    sub-double v22, v10, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 395
    .local v2, diff_u:D
    sub-double v22, v14, v16

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 396
    .local v4, diff_v:D
    const-wide/high16 v22, 0x4000

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide/high16 v24, 0x4000

    move-wide/from16 v0, v24

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    const-wide/high16 v24, 0x4000

    move-wide/from16 v0, v24

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 397
    .local v8, distance:D
    return-wide v8
.end method

.method private getImportEventID(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 5
    .parameter "c"
    .parameter "importGUID"

    .prologue
    const/4 v2, -0x1

    .line 895
    if-nez p1, :cond_1

    .line 918
    :cond_0
    :goto_0
    return v2

    .line 900
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 903
    const/4 v2, -0x1

    .line 905
    .local v2, imporEventID:I
    const-string v4, "iCalGUID"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 906
    .local v1, colUID:I
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 908
    .local v0, colEventID:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 911
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 912
    .local v3, uid:Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 913
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 914
    goto :goto_0

    .line 916
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 78
    const-class v1, Lcom/htc/util/calendar/HtcCalendarManager;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 85
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 88
    :cond_1
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iget-object v0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 89
    if-eqz p0, :cond_3

    .line 90
    const-string v0, "HtcCalendarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationContext() should not be null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    iput-object p0, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    .line 96
    :cond_2
    sget-object v0, Lcom/htc/util/calendar/HtcCalendarManager;->me:Lcom/htc/util/calendar/HtcCalendarManager;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 92
    :cond_3
    const-string v0, "HtcCalendarManager"

    const-string v1, "getApplicationContext() should not be null: null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 12
    .parameter "cr"
    .parameter "calendar_id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 685
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, alarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v6, 0x0

    .line 686
    .local v6, idx:I
    const/4 v9, 0x0

    .line 687
    .local v9, numberCal:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 691
    .local v3, cv:Landroid/content/ContentValues;
    move-object v1, v3

    .line 692
    .local v1, cacheContentValue:Landroid/content/ContentValues;
    const-string v10, "calendar_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 695
    sget-object v10, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 696
    .local v7, newEvent:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 697
    .local v8, newEventId:Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 699
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 700
    .local v2, cacheContentValue2:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 701
    const-string v10, "hasAlarm"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    .line 702
    .local v4, hasAlarm:Z
    :goto_1
    if-eqz v4, :cond_0

    .line 704
    const-string v10, "event_id"

    invoke-virtual {v2, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-object v10, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 709
    .end local v4           #hasAlarm:Z
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 710
    goto :goto_0

    .line 701
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 712
    .end local v1           #cacheContentValue:Landroid/content/ContentValues;
    .end local v2           #cacheContentValue2:Landroid/content/ContentValues;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v7           #newEvent:Landroid/net/Uri;
    .end local v8           #newEventId:Ljava/lang/String;
    :cond_2
    return v9
.end method

.method private importCalendarOnBackground(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Handler;Landroid/database/Cursor;I)I
    .locals 14
    .parameter "cr"
    .parameter "calendar_id"
    .parameter
    .parameter
    .parameter "progressHandler"
    .parameter "existEvents"
    .parameter "restoreType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/os/Handler;",
            "Landroid/database/Cursor;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 843
    .local p4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p5, alarms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-boolean v1, Lcom/htc/util/calendar/HtcCalendarManager;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 844
    const-string v1, "HtcCalendarManager"

    const-string v2, "importCalendarOnBackground()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    const/4 v12, 0x0

    .line 847
    .local v12, numberCal:I
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 848
    .local v13, size:I
    const/4 v10, 0x0

    .line 849
    .local v10, isExist:Z
    const-string v3, ""

    .line 850
    .local v3, importGUID:Ljava/lang/String;
    const/4 v4, -0x1

    .line 852
    .local v4, importEventID:I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 855
    .local v7, bundle:Landroid/os/Bundle;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 857
    .local v8, cv:Landroid/content/ContentValues;
    const-string v1, "iCalGUID"

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 858
    move-object/from16 v0, p7

    invoke-direct {p0, v0, v3}, Lcom/htc/util/calendar/HtcCalendarManager;->getImportEventID(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 860
    move-object v5, v8

    .line 861
    .local v5, contentValueEvent:Landroid/content/ContentValues;
    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 863
    .local v6, contentValueAlarm:Landroid/content/ContentValues;
    const-string v1, "calendar_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 865
    const/4 v1, -0x1

    if-eq v4, v1, :cond_2

    .line 867
    packed-switch p8, :pswitch_data_0

    .line 878
    :goto_1
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    .line 880
    if-eqz p6, :cond_1

    .line 881
    new-instance v11, Landroid/os/Message;

    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 882
    .local v11, msg:Landroid/os/Message;
    const-string v1, "value"

    invoke-virtual {v7, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    const-string v1, "max"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {v11, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 886
    const/4 v1, 0x1

    iput v1, v11, Landroid/os/Message;->what:I

    .line 887
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v11           #msg:Landroid/os/Message;
    :pswitch_1
    move-object v1, p0

    move-object v2, p1

    .line 872
    invoke-direct/range {v1 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->updateDB(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 876
    :cond_2
    invoke-direct {p0, p1, v5, v6}, Lcom/htc/util/calendar/HtcCalendarManager;->insertDB(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_1

    .line 890
    .end local v5           #contentValueEvent:Landroid/content/ContentValues;
    .end local v6           #contentValueAlarm:Landroid/content/ContentValues;
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_3
    return v12

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private insertDB(Landroid/content/ContentResolver;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 4
    .parameter "cr"
    .parameter "contentValueEvent"
    .parameter "contentValueAlarm"

    .prologue
    const/4 v0, 0x1

    .line 924
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 926
    .local v1, newEvent:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 927
    .local v2, newEventId:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 928
    const-string v3, "hasAlarm"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 929
    .local v0, hasAlarm:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 931
    const-string v3, "event_id"

    invoke-virtual {p3, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 937
    .end local v0           #hasAlarm:Z
    :cond_0
    return-void

    .line 928
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDB(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 8
    .parameter "cr"
    .parameter "importGUID"
    .parameter "importEventID"
    .parameter "contentValueEvent"
    .parameter "contentValueAlarm"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 941
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iCalGUID = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, where:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "event_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, alarm_where:Ljava/lang/String;
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, p4, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 946
    if-eqz p5, :cond_1

    .line 947
    const-string v5, "hasAlarm"

    invoke-virtual {p4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_2

    move v2, v4

    .line 948
    .local v2, hasAlarm:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 950
    const-string v5, "event_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p5, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 952
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, p5, v0, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 956
    .local v1, count:I
    if-ge v1, v4, :cond_1

    .line 958
    sget-boolean v4, Lcom/htc/util/calendar/HtcCalendarManager;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 959
    const-string v4, "HtcCalendarManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDB (insert alarm) - count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " importGUID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " importEventID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    :cond_0
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4, p5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 967
    .end local v1           #count:I
    .end local v2           #hasAlarm:Z
    :cond_1
    return-void

    .line 947
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "vCalString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    new-instance v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 670
    .local v0, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    invoke-virtual {v0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v1

    .line 671
    .local v1, isPass:Z
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 672
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0
.end method

.method public buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "eventId"

    .prologue
    .line 655
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 656
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v1

    return-object v1
.end method

.method public buildVCalendar(Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    .locals 2
    .parameter "uniEvent"

    .prologue
    .line 642
    new-instance v0, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;-><init>()V

    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->buildVCalendar(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v0

    return-object v0
.end method

.method public checkIfAssociatedNotes(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .parameter "uniEventUri"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->checkIfAssociatedNotes(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/app/Activity;JJLjava/lang/String;I)V
    .locals 12
    .parameter "parent"
    .parameter "begin"
    .parameter "end"
    .parameter "strUid"
    .parameter "which"

    .prologue
    .line 286
    const-string v1, "DeleteEventHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCalendarManager, strUid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v11, Lcom/htc/util/calendar/DeleteEventHelper;

    const/4 v1, 0x0

    invoke-direct {v11, p1, v1}, Lcom/htc/util/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    .line 288
    .local v11, deletehelper:Lcom/htc/util/calendar/DeleteEventHelper;
    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "iCalGUID=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p6, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 289
    .local v6, EventCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 290
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, v11

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;IZZZ)V

    .line 292
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_0
    return-void
.end method

.method public delete(Landroid/content/Context;JJLjava/lang/String;I)V
    .locals 12
    .parameter "context"
    .parameter "begin"
    .parameter "end"
    .parameter "strUid"
    .parameter "which"

    .prologue
    .line 310
    const-string v1, "DeleteEventHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HtcCalendarManager, strUid is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v11, Lcom/htc/util/calendar/DeleteEventHelper;

    const/4 v1, 0x0

    invoke-direct {v11, p1, v1}, Lcom/htc/util/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Z)V

    .line 313
    .local v11, deletehelper:Lcom/htc/util/calendar/DeleteEventHelper;
    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/util/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "iCalGUID=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p6, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 314
    .local v6, EventCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v1, v11

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v10}, Lcom/htc/util/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;IZZZ)V

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_0
    return-void
.end method

.method public generateEventUri(JJJ)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 175
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUri(JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateEventUriString(JJJ)Ljava/lang/String;
    .locals 1
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 163
    invoke-static/range {p1 .. p6}, Lcom/htc/util/calendar/tools/UriTools;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventUriString(J)Ljava/lang/String;
    .locals 1
    .parameter "eventId"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventUriString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateTheEventVCalendarEventTitleUri(J)Landroid/net/Uri;
    .locals 12
    .parameter "eventId"

    .prologue
    .line 226
    iget-object v9, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/htc/util/calendar/tools/UriTools;->generateTheEventVCalendarEventTitleUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v6

    .line 228
    .local v6, ret:Landroid/net/Uri;
    if-eqz v6, :cond_1

    .line 229
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/calendar/HtcCalendarManager;->buildVCalendar(J)Lcom/htc/util/calendar/vcalendar/HtcVCalendar;

    move-result-object v8

    .line 231
    .local v8, vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    const/4 v2, 0x0

    .line 237
    .local v2, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "vcalendar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, pathStr:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v4, path:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 243
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v4, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 245
    .local v1, fileout:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 246
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .local v3, fout:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v8}, Lcom/htc/util/calendar/vcalendar/HtcVCalendar;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 257
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 263
    .end local v1           #fileout:Ljava/io/File;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #pathStr:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    :cond_1
    :goto_0
    return-object v6

    .line 258
    .restart local v1       #fileout:Ljava/io/File;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/io/File;
    .restart local v5       #pathStr:Ljava/lang/String;
    .restart local v7       #title:Ljava/lang/String;
    .restart local v8       #vcal:Lcom/htc/util/calendar/vcalendar/HtcVCalendar;
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 261
    goto :goto_0

    .line 249
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fileout:Ljava/io/File;
    .end local v3           #fout:Ljava/io/FileOutputStream;
    .end local v4           #path:Ljava/io/File;
    .end local v5           #pathStr:Ljava/lang/String;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 250
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v9, "HtcCalendarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateTheEventVCalendarEventTitleUri() #1 should not be null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 258
    :catch_2
    move-exception v0

    .line 259
    .local v0, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 261
    goto :goto_0

    .line 251
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 252
    .restart local v0       #e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v9, "HtcCalendarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generateTheEventVCalendarEventTitleUri() #2 should not be null:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    const/4 v6, 0x0

    .line 257
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 258
    :catch_4
    move-exception v0

    .line 259
    const/4 v6, 0x0

    .line 261
    goto :goto_0

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 257
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 260
    :goto_4
    throw v9

    .line 258
    :catch_5
    move-exception v0

    .line 259
    .restart local v0       #e:Ljava/io/IOException;
    const/4 v6, 0x0

    goto :goto_4

    .line 256
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v1       #fileout:Ljava/io/File;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    .restart local v4       #path:Ljava/io/File;
    .restart local v5       #pathStr:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 251
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 249
    .end local v2           #fout:Ljava/io/FileOutputStream;
    .restart local v3       #fout:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #fout:Ljava/io/FileOutputStream;
    .restart local v2       #fout:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public generateUniEventUri(JJJ)Landroid/net/Uri;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUri(Landroid/content/Context;JJJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public generateUniEventUriString(JJJ)Ljava/lang/String;
    .locals 7
    .parameter "eventId"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/util/calendar/tools/UriTools;->generateUniEventUriString(Landroid/content/Context;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssociatedNotesId(Ljava/lang/String;)J
    .locals 2
    .parameter "uniEventUri"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/notes/NotesHelper;->getAssociatedNotesId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttendees(Landroid/net/Uri;I)Ljava/util/ArrayList;
    .locals 16
    .parameter "uri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/calendar/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    const/4 v11, 0x0

    .line 757
    .local v11, member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 758
    .local v1, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/htc/util/calendar/tools/UriTools;->getEventId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v9

    .line 759
    .local v9, event_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 808
    :goto_0
    return-object v2

    .line 761
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "event_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 765
    .local v15, where:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    move/from16 v0, p2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 771
    :cond_1
    const-string v2, " and "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeStatus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 777
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAttendees: where="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/util/calendar/HtcCalendarManager;->Debug(Ljava/lang/String;)V

    .line 780
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attendeeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "attendeeEmail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " ASC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 786
    .local v13, sort:Ljava/lang/StringBuffer;
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarManager;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 788
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 789
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 790
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 792
    .restart local v11       #member:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/calendar/Attendee;>;"
    :cond_4
    const-string v2, "attendeeStatus"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 793
    .local v14, status:I
    const-string v2, "attendeeName"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 794
    .local v12, name:Ljava/lang/String;
    const-string v2, "attendeeEmail"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 795
    .local v8, email:Ljava/lang/String;
    const-string v2, "default@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "exchange@htc.calendar"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Outlook"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 802
    :cond_5
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 805
    .end local v8           #email:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #status:I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 806
    :cond_7
    const/4 v7, 0x0

    move-object v2, v11

    .line 808
    goto/16 :goto_0

    .line 800
    .restart local v8       #email:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v14       #status:I
    :cond_8
    new-instance v2, Lcom/htc/util/calendar/Attendee;

    invoke-direct {v2, v12, v8, v14}, Lcom/htc/util/calendar/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAvailableColor()Ljava/lang/Integer;
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 518
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 520
    .local v7, colorUsage:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const v1, -0x30cdde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const v1, -0x21a883

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const v1, -0x62b755

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    const v1, -0x8fbc51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const v1, -0xfea379

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    const v1, -0xe17d78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const v1, -0xde5c85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const v1, -0xd964d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const v1, -0xb7731c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const v1, -0x875709

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const v1, -0x487615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const v1, -0xe46fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const v1, -0x26ff4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const v1, -0x1998f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const v1, -0x3c99b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const v1, -0x8fb4a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const v1, -0xccb68d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    const v1, -0x9ba477

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const v1, -0xf76ea7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const v1, -0x7b8cf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const v1, -0x3a6ac8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const v1, -0xf287ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const v1, -0x2f949c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const v1, -0x96e4e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const v1, -0x328b1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const v1, -0x87b430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const v1, -0xb67919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    const v1, -0xab8930

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const v1, -0xbd296e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const v1, -0x6d1e40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const v1, -0xbf5bbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const v1, -0x4c2394

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const v1, -0x4d4bc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const v1, -0x4167d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    const/16 v1, -0x52ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const v1, -0x8ac9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const v1, -0x335954

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const v1, -0x466501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const v1, -0x897a6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const v1, -0x603919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const v1, -0x8c646c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const v1, -0x696796

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    const v1, -0x486790

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const v1, -0x46bee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const v1, -0x7c5de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const v1, -0x4cd765

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const v1, -0x5b851e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const v1, -0xbda86b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const v1, -0xd7d563

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const v1, -0xe9589b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const v1, -0xb366da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const v1, -0x842eb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    const v1, -0x6852e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const v1, -0x3c77f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    const v1, -0x3794e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const v1, -0x538da2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    const v1, -0x82c4ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const v1, -0x66efa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const v1, -0x656301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const v1, -0x601e19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const v1, -0x354241

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const v1, -0xc9688c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const v1, -0x52e9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const v1, -0x64e3de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    new-array v2, v13, [Ljava/lang/String;

    const-string v1, "calendar_color"

    aput-object v1, v2, v12

    .line 592
    .local v2, projectArys:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 593
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "calendar_color IS NOT NULL "

    .line 594
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 596
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 597
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 598
    .local v10, nCnt:I
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "total have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " color IS NOT NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-lez v10, :cond_5

    .line 602
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    :cond_0
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 606
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 619
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 620
    .local v8, it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 621
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 622
    .local v9, key:Ljava/lang/Integer;
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 624
    .local v11, value:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 625
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Avaiable color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    .end local v8           #it:Ljava/util/Iterator;
    .end local v9           #key:Ljava/lang/Integer;
    .end local v10           #nCnt:I
    .end local v11           #value:Ljava/lang/Integer;
    :goto_1
    return-object v9

    .line 609
    .restart local v10       #nCnt:I
    :cond_4
    const-string v1, "HtcCalendarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not find matching for color "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 632
    .end local v10           #nCnt:I
    :cond_5
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1
.end method

.method public getAvailableColorAsset([I)Ljava/lang/Integer;
    .locals 2
    .parameter "drawable_array"

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getAvailableColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 504
    .local v0, color:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 505
    invoke-virtual {p0, v0, p1}, Lcom/htc/util/calendar/HtcCalendarManager;->getMappingColorAssetid(I[I)Ljava/lang/Integer;

    move-result-object v1

    .line 506
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getEvent(Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;
    .locals 1
    .parameter "eventUri"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->getEventInstance(Landroid/content/Context;Landroid/net/Uri;)Lcom/htc/util/calendar/EventInstance;

    move-result-object v0

    return-object v0
.end method

.method public getMappingColorAssetid(I[I)Ljava/lang/Integer;
    .locals 16
    .parameter "color"
    .parameter "drawable_array"

    .prologue
    .line 466
    move-object/from16 v0, p2

    array-length v1, v0

    if-ltz v1, :cond_0

    move-object/from16 v0, p2

    array-length v1, v0

    sget-object v2, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 467
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drawable_array length does not equal to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_1
    const v1, 0xffffff

    and-int p1, p1, v1

    .line 472
    :try_start_0
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 487
    :goto_0
    return-object v1

    .line 474
    :catch_0
    move-exception v11

    .line 475
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "HtcCalendarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableColorAsset error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-wide/16 v9, 0x0

    .line 477
    .local v9, diff:D
    const/4 v13, 0x0

    .line 478
    .local v13, matched_color_res:I
    const/4 v12, 0x0

    .local v12, index:I
    :goto_1
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->COLOR_MATRIX_RES:[I

    array-length v1, v1

    if-ge v12, v1, :cond_4

    .line 479
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->COLOR_MATRIX_RES:[I

    aget v8, v1, v12

    .line 480
    .local v8, color_res:I
    const/high16 v1, 0xff

    and-int v1, v1, p1

    shr-int/lit8 v2, v1, 0x10

    const v1, 0xff00

    and-int v1, v1, p1

    shr-int/lit8 v3, v1, 0x8

    move/from16 v0, p1

    and-int/lit16 v4, v0, 0xff

    const/high16 v1, 0xff

    and-int/2addr v1, v8

    shr-int/lit8 v5, v1, 0x10

    const v1, 0xff00

    and-int/2addr v1, v8

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v7, v8, 0xff

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/util/calendar/HtcCalendarManager;->compareColor(IIIIII)D

    move-result-wide v14

    .line 482
    .local v14, temp_diff:D
    const-wide/16 v1, 0x0

    cmpl-double v1, v9, v1

    if-eqz v1, :cond_2

    cmpg-double v1, v14, v9

    if-gez v1, :cond_3

    .line 483
    :cond_2
    move-wide v9, v14

    .line 484
    move v13, v8

    .line 478
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 487
    .end local v8           #color_res:I
    .end local v14           #temp_diff:D
    :cond_4
    sget-object v1, Lcom/htc/util/calendar/HtcCalendarManager;->colorMappingToIndex:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget v1, p2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public importCalendar(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 17
    .parameter "cr"
    .parameter "calendar_id"
    .parameter "vCalString"

    .prologue
    .line 724
    new-instance v13, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 725
    .local v13, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v15

    .line 727
    .local v15, isPass:Z
    if-nez v15, :cond_0

    const/4 v1, 0x0

    .line 737
    :goto_0
    return v1

    .line 729
    :cond_0
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v5

    .line 730
    .local v5, multiEventsCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoCV()Ljava/util/ArrayList;

    move-result-object v11

    .line 731
    .local v11, multiToDoCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventAlarmsCV()Ljava/util/ArrayList;

    move-result-object v6

    .line 732
    .local v6, multiEventsAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v13}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiToDoAlarmsCV()Ljava/util/ArrayList;

    move-result-object v12

    .local v12, multiToDoAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 734
    invoke-direct/range {v1 .. v6}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v14

    .local v14, evCal:I
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p2

    .line 735
    invoke-direct/range {v7 .. v12}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendar(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v16

    .line 737
    .local v16, todoCal:I
    add-int v1, v14, v16

    goto :goto_0
.end method

.method public importCalendarOnBackground(Landroid/content/ContentResolver;JLjava/lang/String;Landroid/os/Handler;Landroid/database/Cursor;I)I
    .locals 13
    .parameter "cr"
    .parameter "calendar_id"
    .parameter "vCalString"
    .parameter "progressHandler"
    .parameter "existEvents"
    .parameter "restoreType"

    .prologue
    .line 823
    new-instance v10, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;

    invoke-direct {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;-><init>()V

    .line 824
    .local v10, cal:Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->parseVCalendar(Ljava/lang/String;)Z

    move-result v12

    .line 826
    .local v12, isPass:Z
    if-nez v12, :cond_0

    .line 827
    const/4 v11, 0x0

    .line 834
    :goto_0
    return v11

    .line 829
    :cond_0
    invoke-virtual {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventsCV()Ljava/util/ArrayList;

    move-result-object v5

    .line 830
    .local v5, multiEventsCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMultiEventAlarmsCV()Ljava/util/ArrayList;

    move-result-object v6

    .local v6, multiEventsAlarmCv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 832
    invoke-direct/range {v1 .. v9}, Lcom/htc/util/calendar/HtcCalendarManager;->importCalendarOnBackground(Landroid/content/ContentResolver;JLjava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Handler;Landroid/database/Cursor;I)I

    move-result v11

    .line 834
    .local v11, evCal:I
    goto :goto_0
.end method

.method public isEventConflict(Ljava/lang/String;JJ)Z
    .locals 15
    .parameter "GUID"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 970
    iget-object v6, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 972
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    .line 973
    .local v4, proj:[Ljava/lang/String;
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 974
    .local v13, time:Landroid/text/format/Time;
    invoke-virtual {v13}, Landroid/text/format/Time;->setToNow()V

    .line 975
    iget-wide v6, v13, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 976
    .local v12, startJulianDay:I
    add-int/lit8 v10, v12, 0x1

    .line 977
    .local v10, endJulianDay:I
    iget-wide v6, v13, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v11

    .line 978
    .local v11, eventEndJulianDay:I
    sget-object v6, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "/"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 979
    .local v3, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 981
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(( begin < "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")OR(("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "allDay"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= 1) AND (startDay >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND endDay <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "))) AND Events._id not in (select Events._id from Events where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "facebook_type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= 0 OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " like \'%HTC_BirthdayEvent%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "iCalGUID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " like \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "calendar_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not in (Select _id from Calendars where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "calendar_access_level"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "visible"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = 1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 989
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 990
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 991
    const/4 v6, 0x1

    .line 998
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 999
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v6

    .line 993
    :cond_1
    const/4 v6, 0x0

    .line 998
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 999
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 995
    :catch_0
    move-exception v9

    .line 996
    .local v9, e:Ljava/lang/Exception;
    const/4 v6, 0x0

    .line 998
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 999
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 998
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_2

    .line 999
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method

.method public isEventExist(Landroid/net/Uri;)Z
    .locals 1
    .parameter "uri"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->isEventExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public setAssociation(JLjava/lang/String;Z)Landroid/net/Uri;
    .locals 1
    .parameter "noteId"
    .parameter "eventUri"
    .parameter "isSet"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/htc/util/calendar/notes/NotesHelper;->setAssociation(Landroid/content/Context;JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public uniEventToEventUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uniEvent"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/util/calendar/HtcCalendarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/htc/util/calendar/tools/UriTools;->uniEventToEventUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
