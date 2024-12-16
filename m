Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C709360
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Dec 2024 00:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734310209; cv=none; b=n2ertBKNui/hmUmro1o+9kJvk9SRwFTz5vlrPfGVB7EDTnUYunJQ++qjnNMlZ7t66XRyR5YR+O/V1CC1FGrycNvWt//YwVoDiXLiMpR0Q+sE7EOmX6qJZayxdPy2rjoISj1CdrCC4LRbnsWRyIZWtRhMvAc6VQHKxgrFQx7sFyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734310209; c=relaxed/simple;
	bh=c1m6sdfFyWu0rs7fsGR6/byplRDDfD+PG0jaOI+OGss=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Us10tlL6BuySGNaCVB9meHugGN1w1eIdb6yo9WT9pdV16noyuqExTs5ipNXjwuPkkAPKitWh0T2x0rauGEkooWfyeepRVH7vtjj9zz0hU/0J3kdjWO73LV8eYW0IMGm0NyhTC060TX2rtZ+CRJvxhBM4zEV3XsgJG6ohudXYMLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734310209;
	bh=c1m6sdfFyWu0rs7fsGR6/byplRDDfD+PG0jaOI+OGss=;
	h=Subject:From:To:Date:From;
	b=W4rX7KLPJleYM55P+cxgV4C2UH6ZtIixsIHK316O+83xoEcSksOV5itpF/ZS6YT3y
	 haxfVy6afd690agQrGSwXpOAB4dB0UBIAvpCEtp7mlgw8e7/FCBHJpwqG7EIabk84J
	 Am6tu/U5Y9h4yFsksFhxrGWcZHvzRal9QNASLEY8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4B44C4CECE
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Dec 2024 00:50:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B44F63806656
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Dec 2024 00:50:26 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.13-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Dec 2024 00:50:25 +0000
Message-Id: <20241216005025.release-6.13-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.13-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.13-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.13-rc3/v6.12

Linux kernel version 6.13-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.13-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.13-rc3/v6.12

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.13-rc3/v6.13-rc2

