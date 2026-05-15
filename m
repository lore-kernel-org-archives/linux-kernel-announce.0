Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8785F36405E
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778850975; cv=none; b=cn9P+69EnrP5uOGWV82aDehJ4TkKDjtFp/AziZSBmy/9I7r8eOId0HBssfsU1Aji96WpWuKke/ReG2Wl/pobaVRIwm5wihdyq/6ebtd6BYK6cgjgxeSGlY8uJe8aWcgk73W8/QnnhabG670WwEzBTPdxxICzRayuZzueF/nJ2jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778850975; c=relaxed/simple;
	bh=i1N2Ckevs6dxstvucxnaJg9dT+BWZKDaD5oZeMabvcs=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=P2x15vJ9EtqdhBLWQA5gpZv9J7quM1DKOoqDKIriAlxvT9xEDQIQNhqWbAh9jQnLHBza9WtRRvZT62kAfoV9+lJh00Iiw1hWodfX439pa59vu1YAqJx8cNHui2FhkRy9Gh44H3VM9me7BRivfaHa3O/ocPwIGQL3gplRBQxf4jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778850975;
	bh=i1N2Ckevs6dxstvucxnaJg9dT+BWZKDaD5oZeMabvcs=;
	h=Subject:From:To:Date:From;
	b=wDjbsEGP/ivpQmoylSYVZ/EuLI7kF8k+FTMIZ84v+QqoCGQ0XalBEGEghR+LB5Rwb
	 FdpPfT0jmUX5tKi9V7Hy3McI06jCaD9+CklMzomyvoQPcDx5wNh5bEpZHDGqIy2hmC
	 ifBsTyg9jt/WtEWIj2bevbPJE6j+HBy0sWF4eWPA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B71EC2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:16:15 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC9C2383BF57
	for <linux-kernel-announce@vger.kernel.org>; Fri, 15 May 2026 13:15:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.89 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 15 May 2026 13:15:19 +0000
Message-Id: <20260515131519.release-6.12.89@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.89
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.89.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.89.xz

Linux kernel version 6.12.89 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.89.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.89.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.89.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.89/v6.12.88

