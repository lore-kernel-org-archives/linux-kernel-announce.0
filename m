Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F98366DAB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770814224; cv=none; b=J+hlmIgZDHmyTPANgldoC8rcL+t+CQb4OfBMehHl8PLq5lI1O14BC9ege8AGgdxbs3Y4A3wbAgOHQs5f1MoYBG5V2jtdgYdBkgi29NOklwJidTV5WLdlcD1+8IbP0j6vioJftoX7IBV7gYZCp8AZZiTxdjUHvpkjM2rWkChntGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770814224; c=relaxed/simple;
	bh=IQJ2EQ2UyvxxQaEOgEIi0e172OSjT7Mn9JExPi0aAYk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NTRZZ/yVA/WrlTkV49aj8ozTBU6sGsNCDI9LaPz4Re4yO2frq6pqcNgNZOB5iFMDEDka+rKigEYl3ZkbW4PlAL04DAH/8JiRtu5MparZ6Qdm1rju8rqWtJm3xKEUe+bo7fkfplA3ULmT9905j4qIoNU9sVRADeeoIwp9bY7wpcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770814224;
	bh=IQJ2EQ2UyvxxQaEOgEIi0e172OSjT7Mn9JExPi0aAYk=;
	h=Subject:From:To:Date:From;
	b=Bg3Uuycpi8HR5C+pdRooOroYcj5WdtDh7bYe4iBYvyJ6zTnmGT14Nje/QTTtaRAuA
	 s5BI74X2JPPB4vbggGNj0h8nb7UFchvGnP0cqFl2YcbCcYdEIdNKhW+zNzbvjVpeU9
	 PXoY0Kph7QZDkKYP/7vLOu2xkWEQEKfMGUg5bHBk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0DB0C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:50:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0D8A239E961C
	for <linux-kernel-announce@vger.kernel.org>; Wed, 11 Feb 2026 12:50:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.200 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 11 Feb 2026 12:50:18 +0000
Message-Id: <20260211125018.release-5.15.200@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.200
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.200.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.200.xz

Linux kernel version 5.15.200 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.200.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.200.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.200.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.200/v5.15.199

