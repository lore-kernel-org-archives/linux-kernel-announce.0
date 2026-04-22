Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897943D1711
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776862653; cv=none; b=nXqf9kAk7HXgqinbfHD8S4KnG7tVffFLgM2hkwibGIhMjRDWWrRlrAHvJPuu+FSureeK02zcu3VZ2JAGYjSWhko2WVKnlXmMXbk18pmLKzG5TYKkAbxCWnU7mABQli6ndNcDcgj5cBSOGIWr6ckFGan3QOlHtOSCR1xp2MCymts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776862653; c=relaxed/simple;
	bh=MYJqtLzBpy8CTs0P/HmJWxgidG/c8lD+xVFfo+gxSPw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=UmuQyllxxk06iAoC/5mZjZnM/4qJZV8gEzX64qm5rZ9cC5KO1EoFaq7OYug1Wcn5P5qGJtk9rKGsVSwda8/IPTU4kBzDnPUCZIPZaUI2N61S8DR1iG6CEtzuuQUFBfvPhrrnCDswOFJiNixReYT/fiDoMUZkUZ6L/jGV4xeQU+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776862653;
	bh=MYJqtLzBpy8CTs0P/HmJWxgidG/c8lD+xVFfo+gxSPw=;
	h=Subject:From:To:Date:From;
	b=jx+eb2m7Zd7RvvSv3FjZa/136Vikm0bdjp+2MBIB3eS0fRhra8hmuVF2Yf+xT04WF
	 7hCKQ6cpVYLWanhHxG/KnidkHsZ0GK1iIkYzTRz7NGuqsQti8wEtHUOuvjsj8omz0j
	 74tMU8JfrwTWxlw8UD+EN9rqwkHL/ynirdyKELeY=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 379CCC19425
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 12:57:33 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0305C393022A
	for <linux-kernel-announce@vger.kernel.org>; Wed, 22 Apr 2026 12:56:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.83 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 22 Apr 2026 12:56:55 +0000
Message-Id: <20260422125655.release-6.12.83@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.83
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.83.tar.xz

Linux kernel version 6.12.83 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.83.tar.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.83.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.83/v6.12.82

