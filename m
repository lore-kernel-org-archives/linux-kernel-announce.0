Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E13A43CE74
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784903457; cv=none; b=SqvAt8D3p4SKJcbD7ZmXmcoEiHCdyJn1fm+nCKYrKPoAVd+ctdzQsRcBKcjHqWuHvJa3yiHTt8cdJYfBNghEU3e55/+xRZpxka7wLNCwY2bDaaxaRF+/2Nmhg4CFu8qwgmckGdtOEIrsn4DrIp4St5flhJ/06bUJ/OghaBly/nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784903457; c=relaxed/simple;
	bh=ENS1Ywn9jO36Qzas3PKZ++us1UuGdJfHZFwZ4LHDkdU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iTRLZjUBuPqWUdtdd+3GgvDQdbLrvxLfzNMZjXF39FQDKVearOkslsdFj5WPlWP59fUXDNtF/CzMag7jvYHbhtmRYl1tbdBDoQygv06Q9yRDqCjMaJDBj4o968iU1lOofJG0ERz6ItbTJMt9wp7WQU0d/xa82Qz5Q7k5oWBKxtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1784903457;
	bh=ENS1Ywn9jO36Qzas3PKZ++us1UuGdJfHZFwZ4LHDkdU=;
	h=Subject:From:To:Date:From;
	b=AI7G9EBoEyJnR8kldIEZBMum0Xh3TOnuSbjAhaEfARx9B9NBmB92ragVmpdDu1CnL
	 gU1+tn7PmHphuY5GgG1oN0EV6GHDGflTCGyUj0IDjvwOBJN6XWHXhxJBN7iKM7KD7L
	 f5TKA9zZfkAg8LZf2NWAb4DYfP6Zxn/9UcXohvQ0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B6DB1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:30:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D5B843926383
	for <linux-kernel-announce@vger.kernel.org>; Fri, 24 Jul 2026 14:30:24 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.40 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 24 Jul 2026 14:30:23 +0000
Message-Id: <20260724143023.release-6.18.40@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.40
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.40.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.40.xz

Linux kernel version 6.18.40 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.40.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.40.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.40.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.40/v6.18.39

