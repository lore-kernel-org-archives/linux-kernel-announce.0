Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55FB33D4F8
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250058; cv=none; b=JfUquPjEwy08/m6PYIcbmSBcQcB6D2BsRCTGdjXbyJdtnA3UycF5qe3sTUmFODl2B2hoGHklRgzSQrr9ZlwIQPOSfHaDYqoCYxx9rkwD7ASBDCjmPSEkYkqhGGkEh5Y0krmbHmg0gY3EYGHLopIVTAUppxRKAjdocr4XqSWX25Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250058; c=relaxed/simple;
	bh=Xyr1pEF6FmH8K21Hdnlf0sueoM0pzDvWQHX/7qKlMTk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UhrRDYNZzAmGtQ0blwefiG4L9ev+TWv3ywXgXOfU/xUaefavk3You0KU6x0aPYIabWJzOfUP1wSc5ye3ViQVyygB64KF1TdFle2JM2sLlkZ0CBFln3jywQYcPLcqisd4y/8wMcSuzTrXhoMxGIGs4cCOnj9G41687FudE+Zi1lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768250058;
	bh=Xyr1pEF6FmH8K21Hdnlf0sueoM0pzDvWQHX/7qKlMTk=;
	h=Subject:From:To:Date:From;
	b=HnsNJOleKaiI0zNJcEtlbqD9NXpDqI98agqahVb64hcmFocWaMWqKqU7AQZt605hi
	 G973fO4c+jr2sOEDoZlwc8QLvSdKxBMmVNOPYN9Ini9nLo9Xc9P3EC1DUnua/VKldk
	 kILIwWFh8XKcuaUi3SHR4Ium0h6fgsSTbA7umAwc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58D16C116D0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:18 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7892A380CFDB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:30:53 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.65 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 12 Jan 2026 20:30:52 +0000
Message-Id: <20260112203052.release-6.12.65@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.65
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.65.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.65.xz

Linux kernel version 6.12.65 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.65.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.65.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.65.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.65/v6.12.64

