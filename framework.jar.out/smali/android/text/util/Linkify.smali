.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$CustomMatcher;,
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final LOCATION_URI:I = 0x8

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field private static final PRIME_TAG:Ljava/lang/String; = "prime"

.field private static SUPPORT_PRIME:Z = false

.field public static final WEB_URLS:I = 0x1

.field public static final sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field private static sUnderLineLink:Z

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 118
    sput-boolean v1, Landroid/text/util/Linkify;->SUPPORT_PRIME:Z

    .line 121
    const-string/jumbo v0, "ro.da1.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/text/util/Linkify;->SUPPORT_PRIME:Z

    .line 126
    const/4 v0, 0x1

    sput-boolean v0, Landroid/text/util/Linkify;->sUnderLineLink:Z

    .line 137
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 155
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 180
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    .line 194
    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 824
    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 348
    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 353
    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 369
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 2
    .parameter "text"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    .line 388
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 390
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 394
    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 10
    .parameter "text"
    .parameter "mask"

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 308
    :goto_0
    return v1

    .line 261
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 263
    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    .line 264
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 263
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 267
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 270
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "https://"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 275
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 276
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "mailto:"

    aput-object v4, v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 281
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 282
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "tel:"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 287
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 288
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 292
    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_6

    .line 293
    sget-object v2, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "http://maps.google.com/maps?f=q&geocode=&q="

    aput-object v4, v3, v1

    const/4 v4, 0x0

    sget-object v5, Landroid/text/util/Linkify;->sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 298
    :cond_6
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 301
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 304
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$LinkSpec;

    .line 305
    .local v8, link:Landroid/text/util/Linkify$LinkSpec;
    iget-object v1, v8, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/Linkify$LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .line 308
    .end local v8           #link:Landroid/text/util/Linkify$LinkSpec;
    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 1
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 10
    .parameter "s"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    const/4 v9, 0x0

    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, hasMatches:Z
    if-nez p2, :cond_2

    const-string v4, ""

    .line 430
    .local v4, prefix:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 432
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 433
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 434
    .local v5, start:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 435
    .local v1, end:I
    const/4 v0, 0x1

    .line 437
    .local v0, allowed:Z
    if-eqz p3, :cond_1

    .line 438
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 441
    :cond_1
    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, url:Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 446
    const/4 v2, 0x1

    goto :goto_1

    .line 429
    .end local v0           #allowed:Z
    .end local v1           #end:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #start:I
    .end local v6           #url:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 450
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_3
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 5
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v2

    .line 322
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 324
    .local v1, t:Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 325
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #t:Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 327
    goto :goto_0

    .line 332
    .restart local v1       #t:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 334
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 338
    goto :goto_0
.end method

.method public static final addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/util/Linkify$CustomMatcher;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 703
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, customMatchers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/text/util/Linkify$CustomMatcher;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v0

    return v0
.end method

.method public static final addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;I)Z
    .locals 18
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/util/Linkify$CustomMatcher;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 725
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, customMatchers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/text/util/Linkify$CustomMatcher;>;"
    if-nez p1, :cond_0

    .line 726
    const/4 v3, 0x0

    .line 821
    :goto_0
    return v3

    .line 728
    :cond_0
    const/4 v3, 0x0

    invoke-interface/range {p0 .. p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/style/URLSpan;

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/URLSpan;

    .line 730
    .local v15, old:[Landroid/text/style/URLSpan;
    array-length v3, v15

    add-int/lit8 v11, v3, -0x1

    .local v11, i:I
    :goto_1
    if-ltz v11, :cond_1

    .line 731
    aget-object v3, v15, v11

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 730
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 733
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 735
    .local v2, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    .line 736
    if-eqz p3, :cond_7

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 737
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$CustomMatcher;

    .line 738
    .local v8, cm:Landroid/text/util/Linkify$CustomMatcher;
    iget-object v4, v8, Landroid/text/util/Linkify$CustomMatcher;->pattern:Ljava/util/regex/Pattern;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "http://"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "https://"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "rtsp://"

    aput-object v6, v5, v3

    iget-object v6, v8, Landroid/text/util/Linkify$CustomMatcher;->matchFilter:Landroid/text/util/Linkify$MatchFilter;

    iget-object v7, v8, Landroid/text/util/Linkify$CustomMatcher;->transformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 744
    .end local v8           #cm:Landroid/text/util/Linkify$CustomMatcher;
    :cond_2
    :goto_2
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    .line 745
    if-eqz p3, :cond_8

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 746
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$CustomMatcher;

    .line 747
    .restart local v8       #cm:Landroid/text/util/Linkify$CustomMatcher;
    iget-object v4, v8, Landroid/text/util/Linkify$CustomMatcher;->pattern:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "mailto:"

    aput-object v6, v5, v3

    iget-object v6, v8, Landroid/text/util/Linkify$CustomMatcher;->matchFilter:Landroid/text/util/Linkify$MatchFilter;

    iget-object v7, v8, Landroid/text/util/Linkify$CustomMatcher;->transformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 753
    .end local v8           #cm:Landroid/text/util/Linkify$CustomMatcher;
    :cond_3
    :goto_3
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_4

    .line 754
    if-eqz p3, :cond_9

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 755
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$CustomMatcher;

    .line 756
    .restart local v8       #cm:Landroid/text/util/Linkify$CustomMatcher;
    iget-object v4, v8, Landroid/text/util/Linkify$CustomMatcher;->pattern:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "tel:"

    aput-object v6, v5, v3

    iget-object v6, v8, Landroid/text/util/Linkify$CustomMatcher;->matchFilter:Landroid/text/util/Linkify$MatchFilter;

    iget-object v7, v8, Landroid/text/util/Linkify$CustomMatcher;->transformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 762
    .end local v8           #cm:Landroid/text/util/Linkify$CustomMatcher;
    :cond_4
    :goto_4
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_5

    .line 763
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 765
    :cond_5
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_6

    .line 766
    if-eqz p3, :cond_a

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 767
    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/Linkify$CustomMatcher;

    .line 768
    .restart local v8       #cm:Landroid/text/util/Linkify$CustomMatcher;
    iget-object v4, v8, Landroid/text/util/Linkify$CustomMatcher;->pattern:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "http://maps.google.com/maps?f=q&geocode=&q="

    aput-object v6, v5, v3

    iget-object v6, v8, Landroid/text/util/Linkify$CustomMatcher;->matchFilter:Landroid/text/util/Linkify$MatchFilter;

    iget-object v7, v8, Landroid/text/util/Linkify$CustomMatcher;->transformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 776
    .end local v8           #cm:Landroid/text/util/Linkify$CustomMatcher;
    :cond_6
    :goto_5
    invoke-static {v2}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 778
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 779
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 741
    :cond_7
    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "http://"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "https://"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "rtsp://"

    aput-object v6, v5, v3

    sget-object v6, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto/16 :goto_2

    .line 750
    :cond_8
    sget-object v4, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "mailto:"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto/16 :goto_3

    .line 759
    :cond_9
    sget-object v4, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "tel:"

    aput-object v6, v5, v3

    sget-object v6, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v7, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto/16 :goto_4

    .line 771
    :cond_a
    sget-object v4, Landroid/util/Patterns;->LOCATION_PATTERN:Ljava/util/regex/Pattern;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "http://maps.google.com/maps?f=q&geocode=&q="

    aput-object v6, v5, v3

    const/4 v6, 0x0

    sget-object v7, Landroid/text/util/Linkify;->sLocationTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto :goto_5

    .line 781
    :cond_b
    const-class v3, Landroid/text/style/LinkifyURLSpan;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    .line 782
    .local v13, isLinkifyURLSpan:Z
    if-nez v13, :cond_c

    .line 783
    const-string/jumbo v3, "prime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a subclass of LinkifyURLSpan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 787
    :cond_c
    const/4 v9, 0x0

    .line 789
    .local v9, ctor:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 795
    const/16 v16, 0x0

    .line 797
    .local v16, setExtraFlagsMethod:Ljava/lang/reflect/Method;
    :try_start_1
    const-string/jumbo v3, "setExtraFlags"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    .line 802
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/text/util/Linkify$LinkSpec;

    .line 805
    .local v14, link:Landroid/text/util/Linkify$LinkSpec;
    const/4 v3, 0x1

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v14, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    .line 811
    .local v17, span:Ljava/lang/Object;
    if-eqz p4, :cond_d

    if-eqz v16, :cond_d

    .line 813
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 818
    :cond_d
    :goto_8
    iget v3, v14, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v4, v14, Landroid/text/util/Linkify$LinkSpec;->end:I

    const/16 v5, 0x21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    .line 790
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #link:Landroid/text/util/Linkify$LinkSpec;
    .end local v16           #setExtraFlagsMethod:Ljava/lang/reflect/Method;
    .end local v17           #span:Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 791
    .local v10, e:Ljava/lang/Exception;
    const-string/jumbo v3, "prime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " get Constructor(String) failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 792
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 798
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v16       #setExtraFlagsMethod:Ljava/lang/reflect/Method;
    :catch_1
    move-exception v10

    .line 799
    .restart local v10       #e:Ljava/lang/Exception;
    const-string/jumbo v3, "prime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " get setExtraFlags(int) failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 806
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #link:Landroid/text/util/Linkify$LinkSpec;
    :catch_2
    move-exception v10

    .line 807
    .restart local v10       #e:Ljava/lang/Exception;
    const-string/jumbo v3, "prime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " get newInstance(String) failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 814
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v17       #span:Ljava/lang/Object;
    :catch_3
    move-exception v10

    .line 815
    .restart local v10       #e:Ljava/lang/Exception;
    const-string/jumbo v3, "prime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " setExtraFlagsMethod(int) failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 821
    .end local v10           #e:Ljava/lang/Exception;
    .end local v14           #link:Landroid/text/util/Linkify$LinkSpec;
    .end local v17           #span:Ljava/lang/Object;
    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method public static final addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;)Z
    .locals 1
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/util/Linkify$CustomMatcher;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 636
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, customMatchers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/text/util/Linkify$CustomMatcher;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v0

    return v0
.end method

.method public static final addLinksForPrime(Landroid/widget/TextView;ILjava/lang/Class;Ljava/util/HashMap;I)Z
    .locals 5
    .parameter "text"
    .parameter "mask"
    .parameter
    .parameter
    .parameter "extraFlags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/util/Linkify$CustomMatcher;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, customURLSpanClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p3, customMatchers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Landroid/text/util/Linkify$CustomMatcher;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 658
    if-nez p1, :cond_1

    .line 681
    :cond_0
    :goto_0
    return v2

    .line 661
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 663
    .local v1, t:Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 664
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #t:Ljava/lang/CharSequence;
    invoke-static {v1, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 666
    goto :goto_0

    .line 672
    .restart local v1       #t:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 674
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinksForPrime(Landroid/text/Spannable;ILjava/lang/Class;Ljava/util/HashMap;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 675
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 676
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    .line 678
    goto :goto_0
.end method

.method public static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 458
    sget-boolean v1, Landroid/text/util/Linkify;->SUPPORT_PRIME:Z

    if-eqz v1, :cond_0

    .line 460
    new-instance v0, Landroid/text/style/LinkifyURLSpan;

    sget-boolean v1, Landroid/text/util/Linkify;->sUnderLineLink:Z

    invoke-direct {v0, p0, v1}, Landroid/text/style/LinkifyURLSpan;-><init>(Ljava/lang/String;Z)V

    .line 468
    .local v0, span:Landroid/text/style/URLSpan;
    :goto_0
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 469
    return-void

    .line 463
    .end local v0           #span:Landroid/text/style/URLSpan;
    :cond_0
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .restart local v0       #span:Landroid/text/style/URLSpan;
    goto :goto_0
.end method

.method public static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 506
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 507
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 508
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 510
    .local v0, end:I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 511
    :cond_1
    new-instance v2, Landroid/text/util/Linkify$LinkSpec;

    invoke-direct {v2}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .line 512
    .local v2, spec:Landroid/text/util/Linkify$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    .line 515
    iput v3, v2, Landroid/text/util/Linkify$LinkSpec;->start:I

    .line 516
    iput v0, v2, Landroid/text/util/Linkify$LinkSpec;->end:I

    .line 518
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    .end local v0           #end:I
    .end local v2           #spec:Landroid/text/util/Linkify$LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 526
    .local v8, string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 528
    .local v1, base:I
    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 531
    .local v7, start:I
    if-gez v7, :cond_1

    .line 555
    .end local v7           #start:I
    :cond_0
    return-void

    .line 535
    .restart local v7       #start:I
    :cond_1
    new-instance v6, Landroid/text/util/Linkify$LinkSpec;

    invoke-direct {v6}, Landroid/text/util/Linkify$LinkSpec;-><init>()V

    .line 536
    .local v6, spec:Landroid/text/util/Linkify$LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 537
    .local v5, length:I
    add-int v4, v7, v5

    .line 539
    .local v4, end:I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/Linkify$LinkSpec;->start:I

    .line 540
    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/Linkify$LinkSpec;->end:I

    .line 541
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 542
    add-int/2addr v1, v4

    .line 544
    const/4 v3, 0x0

    .line 547
    .local v3, encodedAddress:Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 552
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/Linkify$LinkSpec;->url:Ljava/lang/String;

    .line 553
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :catch_0
    move-exception v2

    .line 549
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 473
    if-eqz p3, :cond_0

    .line 474
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 477
    :cond_0
    const/4 v7, 0x0

    .line 479
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 480
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    const/4 v7, 0x1

    .line 485
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 494
    :cond_1
    if-nez v7, :cond_2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 498
    :cond_2
    return-object p0

    .line 479
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/Linkify$LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/Linkify$LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$5;

    invoke-direct {v2}, Landroid/text/util/Linkify$5;-><init>()V

    .line 584
    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/text/util/Linkify$LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 586
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 587
    .local v4, len:I
    const/4 v3, 0x0

    .line 589
    .local v3, i:I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 590
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Linkify$LinkSpec;

    .line 591
    .local v0, a:Landroid/text/util/Linkify$LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/Linkify$LinkSpec;

    .line 592
    .local v1, b:Landroid/text/util/Linkify$LinkSpec;
    const/4 v5, -0x1

    .line 594
    .local v5, remove:I
    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 595
    iget v6, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 596
    add-int/lit8 v5, v3, 0x1

    .line 603
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 604
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 605
    add-int/lit8 v4, v4, -0x1

    .line 606
    goto :goto_0

    .line 597
    :cond_1
    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 598
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 599
    :cond_2
    iget v6, v0, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/Linkify$LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/Linkify$LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 600
    move v5, v3

    goto :goto_1

    .line 611
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 612
    goto :goto_0

    .line 613
    .end local v0           #a:Landroid/text/util/Linkify$LinkSpec;
    .end local v1           #b:Landroid/text/util/Linkify$LinkSpec;
    .end local v5           #remove:I
    :cond_4
    return-void
.end method

.method public static setUnderLineLink(Z)V
    .locals 0
    .parameter "underLineLink"

    .prologue
    .line 129
    sput-boolean p0, Landroid/text/util/Linkify;->sUnderLineLink:Z

    .line 130
    return-void
.end method
