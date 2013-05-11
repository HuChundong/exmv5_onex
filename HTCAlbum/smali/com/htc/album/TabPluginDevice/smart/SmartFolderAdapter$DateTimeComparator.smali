.class Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;
.super Ljava/lang/Object;
.source "SmartFolderAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;",
        ">;"
    }
.end annotation


# static fields
.field static final SORT_ASC:I = 0x1

.field static final SORT_BASE_DAY:I = 0x100

.field static final SORT_BASE_MONTH:I = 0x200

.field static final SORT_BASE_YEAR:I = 0x300

.field static final SORT_DESC:I = 0x2


# instance fields
.field private mSortRule:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 837
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->mSortRule:I

    .line 839
    return-void
.end method

.method private compareASC(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)I
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 847
    if-ne p1, p2, :cond_0

    .line 903
    :goto_0
    return v7

    .line 849
    :cond_0
    if-nez p1, :cond_1

    .line 850
    const/4 v7, -0x1

    goto :goto_0

    .line 852
    :cond_1
    if-nez p2, :cond_2

    move v7, v8

    .line 853
    goto :goto_0

    .line 856
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 858
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->getSortBase(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)J

    move-result-wide v1

    .line 859
    .local v1, cmpA:J
    invoke-static {p2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->getSortBase(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)J

    move-result-wide v3

    .line 861
    .local v3, cmpB:J
    new-instance v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;

    invoke-direct {v5, v9}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$1;)V

    .line 862
    .local v5, dateA:Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;
    new-instance v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;

    invoke-direct {v6, v9}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;-><init>(Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$1;)V

    .line 864
    .local v6, dateB:Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;
    iget v9, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->mSortRule:I

    sparse-switch v9, :sswitch_data_0

    .line 891
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 892
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    .line 893
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    .line 894
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    .line 896
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 897
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    .line 898
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    .line 899
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iput v7, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    .line 903
    :goto_1
    invoke-virtual {v5, v6}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->compare(Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;)I

    move-result v7

    goto :goto_0

    .line 866
    :sswitch_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 867
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    .line 868
    iput v7, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    .line 869
    iput v7, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    .line 871
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 872
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    .line 873
    iput v7, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    .line 874
    iput v7, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    goto :goto_1

    .line 878
    :sswitch_1
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 879
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    .line 880
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    .line 881
    iput v7, v5, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    .line 883
    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 884
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->year:I

    .line 885
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iput v8, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->month:I

    .line 886
    iput v7, v6, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTime;->day:I

    goto :goto_1

    .line 864
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_1
        0x300 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getSortBase(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)J
    .locals 2
    .parameter "anAlbum"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSortBaseWithRule(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;I)J
    .locals 6
    .parameter "anAlbum"
    .parameter "rule"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 815
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 816
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {p0}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->getSortBase(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)J

    move-result-wide v1

    .line 817
    .local v1, time:J
    sparse-switch p1, :sswitch_data_0

    .line 830
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 831
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x2710

    int-to-long v1, v3

    .line 834
    :goto_0
    return-wide v1

    .line 819
    :sswitch_0
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 820
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v3, v4

    int-to-long v1, v3

    .line 821
    goto :goto_0

    .line 824
    :sswitch_1
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 825
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/2addr v3, v4

    int-to-long v1, v3

    .line 826
    goto :goto_0

    .line 817
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public compare(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 908
    invoke-direct {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->compareASC(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)I

    move-result v0

    .line 910
    .local v0, result:I
    iget v1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->mSortRule:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 911
    neg-int v0, v0

    .line 914
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 795
    check-cast p1, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .end local p1
    check-cast p2, Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->compare(Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;Lcom/htc/album/TabPluginDevice/smart/SmartTimeBaseCollection;)I

    move-result v0

    return v0
.end method

.method public setRule(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 842
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/SmartFolderAdapter$DateTimeComparator;->mSortRule:I

    .line 843
    return-void
.end method
