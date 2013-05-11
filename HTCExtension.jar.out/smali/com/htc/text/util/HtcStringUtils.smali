.class public Lcom/htc/text/util/HtcStringUtils;
.super Ljava/lang/Object;
.source "HtcStringUtils.java"


# static fields
.field public static final BLANK_CHAR:Ljava/lang/CharSequence;

.field public static final FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_HOUR_MIN_12:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_HOUR_MIN_24:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_MONTH_DAY_HOUR_MIN:Ljava/text/SimpleDateFormat;

.field public static final FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

.field public static final HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

.field public static final LINE_FEED_CHAR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LINE_FEED_TAG:Ljava/lang/CharSequence;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final NOT_A_CHAR:Ljava/lang/CharSequence;

.field public static final SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, " "

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->BLANK_CHAR:Ljava/lang/CharSequence;

    .line 22
    const-string v0, "\n"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LINE_FEED_CHAR:Ljava/lang/CharSequence;

    .line 24
    const-class v0, Lcom/htc/text/util/HtcStringUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LOG_TAG:Ljava/lang/String;

    .line 30
    const-string v0, "<br />"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->LINE_FEED_TAG:Ljava/lang/CharSequence;

    .line 36
    const-string v0, "\ufffc"

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->NOT_A_CHAR:Ljava/lang/CharSequence;

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    .line 43
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE."

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

    .line 55
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    .line 61
    sget-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN_12:Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "H:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN_24:Ljava/text/SimpleDateFormat;

    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM. d"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM. d, h:mm aa"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY_HOUR_MIN:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/htc/text/util/HtcStringUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NumberFormatException] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "type"
    .parameter "value"

    .prologue
    const-wide/16 v1, 0x0

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 185
    :cond_0
    :goto_0
    return-wide v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/htc/text/util/HtcStringUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NumberFormatException] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTimeStr(Landroid/content/Context;Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "format"
    .parameter "time"

    .prologue
    const v11, 0x20401b1

    const/4 v6, 0x2

    const-wide/32 v9, 0x36ee80

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 81
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 82
    .local v0, d:Ljava/util/Date;
    sget-object v4, Lcom/htc/text/util/HtcStringUtils;->HUMAN_READABLE_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    if-ne p1, v4, :cond_8

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 84
    .local v1, diff:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 85
    const-wide/16 v1, 0x0

    .line 87
    :cond_0
    const-wide/32 v4, 0xc350

    cmp-long v4, v1, v4

    if-gez v4, :cond_1

    .line 88
    const v4, 0x20401b3

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 145
    .end local v1           #diff:J
    :goto_0
    return-object v4

    .line 89
    .restart local v1       #diff:J
    :cond_1
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 90
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 91
    :cond_2
    cmp-long v4, v1, v9

    if-gez v4, :cond_3

    .line 92
    const v4, 0x20401b4

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 94
    :cond_3
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_6

    .line 95
    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_4

    .line 96
    const v4, 0x20401b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 98
    :cond_4
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 99
    .local v3, nowd:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 100
    const v4, 0x20401b5

    new-array v5, v7, [Ljava/lang/Object;

    div-long v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 103
    :cond_5
    const v4, 0x20401b6

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 107
    .end local v3           #nowd:Ljava/util/Date;
    :cond_6
    const-wide/32 v4, 0x14997000

    cmp-long v4, v1, v4

    if-gez v4, :cond_7

    .line 108
    const v4, 0x20401b8

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_WEEKDAY:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 111
    :cond_7
    const v4, 0x20401b9

    new-array v5, v6, [Ljava/lang/Object;

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_MONTH_DAY:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    sget-object v6, Lcom/htc/text/util/HtcStringUtils;->FORMAT_HOUR_MIN:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 114
    .end local v1           #diff:J
    :cond_8
    sget-object v4, Lcom/htc/text/util/HtcStringUtils;->SOCIAL_NETWORK_RELATIVE_TIME:Ljava/text/SimpleDateFormat;

    if-ne p1, v4, :cond_10

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 116
    .restart local v1       #diff:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_9

    .line 117
    const-wide/16 v1, 0x0

    .line 119
    :cond_9
    const-wide/32 v4, 0xc350

    cmp-long v4, v1, v4

    if-gez v4, :cond_a

    .line 120
    const v4, 0x20401b3

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 121
    :cond_a
    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v1, v4

    if-gez v4, :cond_b

    .line 122
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 123
    :cond_b
    cmp-long v4, v1, v9

    if-gez v4, :cond_c

    .line 124
    const v4, 0x20401b4

    new-array v5, v7, [Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    div-long v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 126
    :cond_c
    const-wide/32 v4, 0x5265c00

    cmp-long v4, v1, v4

    if-gez v4, :cond_f

    .line 127
    const-wide/32 v4, 0x6ddd00

    cmp-long v4, v1, v4

    if-gez v4, :cond_d

    .line 128
    const v4, 0x20401b2

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 130
    :cond_d
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 131
    .restart local v3       #nowd:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v5

    if-ne v4, v5, :cond_e

    .line 132
    const v4, 0x20401b5

    new-array v5, v7, [Ljava/lang/Object;

    div-long v6, v1, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 135
    :cond_e
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 141
    .end local v3           #nowd:Ljava/util/Date;
    :cond_f
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 145
    .end local v1           #diff:J
    :cond_10
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method
