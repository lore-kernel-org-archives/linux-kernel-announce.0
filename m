Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC8028A417
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744290311; cv=none; b=TN8BWlR+6Ef8UYPD9MoietgWrLP7ETfYg2F+w4BAZThQQ6su4sPI1TTcHeHY3SgiMnuspEl/9Bbi3I9aF4ZHVAPYN9dcM7LoMrPJgOfoXBmx8HnclaeaQJV4aDxxmkBTOFBnloq1CYu93J+GAsG5SQ/B1/PpttUMFP8+Hiv7G8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744290311; c=relaxed/simple;
	bh=WX9T+yEaqpgNF1U38V0ACNKD/YwsEFQhTAowXweup68=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=oDrDT/NuQBMI7ATNQXXe60BDmKaanDp4hRnoktvor+Fl6zwoweOUcSr7GBt9UdN3lVt5CdO6fDb6TZqWTDYsWc9rS3RX/JqvMt3+ZrWdgi0aVX0xK/bdwwQIuE3QeDw6QfQLrbpAhIX/gj3yFzu4RK3TadOHgt5+4rV4iiPv0eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744290311;
	bh=WX9T+yEaqpgNF1U38V0ACNKD/YwsEFQhTAowXweup68=;
	h=Subject:From:To:Date:From;
	b=Rd2U+lnL27HR474xlljvaMWtU1L3x102R2dH4QlwuTuIJq6iSlYLKR1wmqsJsuHoV
	 68trnOyUrJ5sKXpP90M9T1vncS0+68bcQCIztOjcBz4u0scES+g941jXxkJXdiW8hF
	 nt0MKQ2dar8GzS/zesOj3uygD5lDfW0UL3ANHa1A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B0E6C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:05:10 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3A7E2380CEF4
	for <linux-kernel-announce@vger.kernel.org>; Thu, 10 Apr 2025 13:05:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.134 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 10 Apr 2025 13:05:47 +0000
Message-Id: <20250410130547.release-6.1.134@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.134
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.134.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.134.xz

Linux kernel version 6.1.134 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.134.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.134.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.134.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.134/v6.1.133

