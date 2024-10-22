Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0E41A01B0
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 13:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729605342; cv=none; b=ugafw54LyTjfrSnZJ5FQ59bPT6ouLjfjKf0ZoFUnbRRLA6l7P5biLLZqYBcJt47Ff7U56Xf9MuUGgTMYcF93ohXljm2Jt+gk5Q58iezGF/BRC30Nn63RXtassT9Zhv8Jr4/4HalSoqWqgZFTF3F9rnplLTZKqFuHv7fZ83dyZxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729605342; c=relaxed/simple;
	bh=2ZMbIy4OOlIKJtTQBy8PDqrQk3Am0gBv3Z550oP0aGU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f9tdPHm9maKgs/Q5wTKCJTK/0VbZbYdPDerPxCW7vdCXVNKEcD9QZWZPn3zjgmqgH9Ix9eKfba2eoIfp/3auVRah+VaLuBCXPZKyR7smKMUv+cw8Kj5UeDh4Q4Ax4VBeSEY+zSb8JItKOPWU5Vy422gxkNoWixvAW7WBOgAnOQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1729605342;
	bh=2ZMbIy4OOlIKJtTQBy8PDqrQk3Am0gBv3Z550oP0aGU=;
	h=Subject:From:To:Date:From;
	b=RZH3CQTICDJg0WUtel6HhRKesntOL7CjNP5VkbfXA9dv6MPWYwVc9RR2TryV8Vd+J
	 2iCAM3QdcgNJR9vgRggUyFXMjGwdJeNZyRg9UsDytiEkfQKW25wVsh1rCRcUm7PSzS
	 moCYJGfo954Avhe6BCzDwbNI8q9iJWCTIOBfNGus=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E73AC4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 13:55:42 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id ADAD43822D22
	for <linux-kernel-announce@vger.kernel.org>; Tue, 22 Oct 2024 13:55:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.228 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 22 Oct 2024 13:55:48 +0000
Message-Id: <20241022135548.release-5.10.228@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.228
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.228.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.228.xz

Linux kernel version 5.10.228 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.228.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.228.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.228.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.228/v5.10.227

