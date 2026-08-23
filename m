Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C7AC3C5832
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787488364; cv=none; b=G+T+YPkjvwLROwNbDZ7cTwcytIb+f99DpBhLYekkRNG/iWOV8ieAu/FigTELk697sIQF9gJbcTD3b0T/CdmAZqYbGbPa+7HtRR4GQn30s0nF2ETOz7O5cYYmO8CqIUozc9VzccadVkzNhma9IkCYvvyUY82fuOQ8mMWwJRrS0S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787488364; c=relaxed/simple;
	bh=D72OTEGQHYPe1GJSVkxmM7XPdqFJbCzNDBmh47wofC8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=i6yEHZo9VQ3fEXxOrgQ5SoU1iritT6WlPg0LYVM3qZMTRls53frVz0qtk980emWGrNyRAyUkJSG+5ra0InsJ9q/R9BSgZI9/G8IzhL5s21A3sxQu6THerLQa20I0sISs3aHqQDyZyLC4uxB9QdgyTcjyk8U2WaWN39KCD5eYUDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787488364;
	bh=D72OTEGQHYPe1GJSVkxmM7XPdqFJbCzNDBmh47wofC8=;
	h=Subject:From:To:Date:From;
	b=v0sRawPnI1k6c0T7qqa1yriPCvqhDJwivlmSYRO0KxdVFBa7FRvkH/vKNcaDMoKX2
	 HT2VSnjiL11VEZicUoPlt1jKTdZzWRgjbAv9m1nvlMsk1h1KfLK6JErIvARngjKH8t
	 utGZwezTsbXyhHm71EDbRNbM7tEpb5FntDn1vr+w=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 137531F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:32:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 96485380CFE6
	for <linux-kernel-announce@vger.kernel.org>; Sun, 23 Aug 2026 12:31:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.217 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 23 Aug 2026 12:31:51 +0000
Message-Id: <20260823123151.release-5.15.217@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.217
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.217.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.217.xz

Linux kernel version 5.15.217 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.217.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.217.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.217.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.217/v5.15.216

