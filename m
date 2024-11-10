Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D74717C91
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Nov 2024 22:55:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731279302; cv=none; b=BKgectr3xH0sR6isCs1FcHDkNvbwHoZUVfeGHgpqHXoimsr7mn8cS+9zFaDaGBHxjLhw3teLCdmtQ4vzH6ogngs3IIV/UuAUJraTi5QzGVdRvGutcrzifmJsiFc/1ybzuj+B/j+OjFs3VSa1ofJ17yFLLtaPApdxCjS2uT/z658=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731279302; c=relaxed/simple;
	bh=0oRQEBmOnt629eCGHLbEAUGFVHM8EKju1F1UY580zfE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nORPTLOcAsyX0v8o7j9DMOrZEt/aswY/Ubix0V00X9LHGXw0TQ1oT5zO9ZDEWtRaLjaXh26MSoISvjQmB2dqCAAeMFzswbkEX3Wz95HmkNZBFhJXfXLmtUhoouxOcqge7wI9Nl3z43bjEF1gxXViPOfsCS7S0Nz8ISAWP5FhRks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731279302;
	bh=0oRQEBmOnt629eCGHLbEAUGFVHM8EKju1F1UY580zfE=;
	h=Subject:From:To:Date:From;
	b=etxAhljQcnDpNU/nRlqHba4Lv5N0NJS6mXLlTOhzVaJUUtD16PZNla0RUgp2pO73C
	 JQliBjmU0cUbdiffN5DegluHdaiz4e0McYjl87VoHs6DyW1Ffm0oPyrlPQk1wOzpsL
	 ppNBxfxQCX2x8dH4qbgkK9TsE4CBWTG6SebcNadA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD09FC4CECD
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Nov 2024 22:55:01 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B28863809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 10 Nov 2024 22:55:12 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 10 Nov 2024 22:55:11 +0000
Message-Id: <20241110225511.release-6.12-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.12-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.12-rc7/v6.11

Linux kernel version 6.12-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.12-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.12-rc7/v6.11

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.12-rc7/v6.12-rc6

