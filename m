Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8D91D31B9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Nov 2025 23:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763334367; cv=none; b=YoPly1F+3r5TqJXxCDzoix+VnCEMTDStbOtViZSOXNP9tHSfgONBrlsPueQ5MPndsNYEiCnnjQBhr0XQGxpHKZ9qQ3EbnHs3VVsMLN3i4SamwbkVCgkDie9Wohr6dqbAjxkuLQpAXR3QQhAdthYo8SP1Uat4tdt76Xy2Dh/DHm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763334367; c=relaxed/simple;
	bh=ZHj/g1IJxIFJA8q2ARfX5cIWM7wvbOJrHQcW19BGK/w=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=U4voTWgtyEXnsBvNJozHQkFMczQXjLCp9ZqeTEC8GL350HU+dHn4f6xcRszplRKiuf8ha/0Trramsb+eclMPw5zC6pt7KG8xZ0FgA50LRW0NQxJXGDnIYBhpNTlWcWuzRqeyl/B1MpJ6zmD/qZBlHTa3bFH2gU+Gq5K9BgHQrYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1763334367;
	bh=ZHj/g1IJxIFJA8q2ARfX5cIWM7wvbOJrHQcW19BGK/w=;
	h=Subject:From:To:Date:From;
	b=QzMP+EPd58Tbcrurmyyj/at8bMuyAlB6Sx0/qWdn6o+NzUwDW5yiiRbYXZXgxb2DI
	 TmcImPDnAaBAETRnts1OcnOPNEsKX+fI6tY7G2kphU1kopyazrCKUTHAjU0I5Hlt+r
	 Ig+j6/soS66u+DdlCBgo8HhZVNzSrQvUJPaDPHSk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87AF1C19421
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Nov 2025 23:06:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EEACE3A78B32
	for <linux-kernel-announce@vger.kernel.org>; Sun, 16 Nov 2025 23:05:34 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 16 Nov 2025 23:05:33 +0000
Message-Id: <20251116230533.release-6.18-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.18-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.18-rc6/v6.17

Linux kernel version 6.18-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.18-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.18-rc6/v6.17

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.18-rc6/v6.18-rc5

