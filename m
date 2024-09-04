Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8381CEEBF
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725450351; cv=none; b=ZYE/Dir51kZDzmakQAVXFm/GkxJM8W31TGJQ4qngz+SaDeHQoujAz4Mz8ViX5j2t3voqzpSY57KU+yE8XjvdDQk8yATQCkzadKUg8wzVhm52v55e1ZYDseJeYglybI7kJ7CUXsTOpARseTAeUotub3IyqyPLWNb4njwEqWLH0ZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725450351; c=relaxed/simple;
	bh=o3yclbh9x9arYbJZQbEFGgIOoTMYuoFHrfDSAHySRMA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uXgx5wBJ1dyKPdbnmXGgoEQbA8rCqsK92OUUFdMueB0ZDH3uDYiXqxYycPHQ+h9zzT4vtIHHv+pVpu2bWq0M77MVyVyrf5LdLG1t0uFpCQ/fBlVUO5aaTEiPNW/9i113MRwiWsDp8AVpIOaj2UDvraDRSeihK1rx1ykTy2HBYv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725450351;
	bh=o3yclbh9x9arYbJZQbEFGgIOoTMYuoFHrfDSAHySRMA=;
	h=Subject:From:To:Date:From;
	b=XRPesiCHdyJpk9xrsVma19VE/RReyEl0eo3iWY4N3EoWH/5J1Rsclui945XgrIu0v
	 tiuod+56sgdMjdqL7ttcGrM3V944LZNyOO3+U6KG3Fsd9Bhz2J1HQt58Fr/arLWGzg
	 ybxNqQ9BEB/K6ia/UPbT+DMRyPGElbkGaPC+PDCo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBC55C4CEC2
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:45:50 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B75C43806651
	for <linux-kernel-announce@vger.kernel.org>; Wed,  4 Sep 2024 11:45:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.108 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 04 Sep 2024 11:45:51 +0000
Message-Id: <20240904114551.release-6.1.108@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.108
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.108.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.108.xz

Linux kernel version 6.1.108 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.108.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.108.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.108.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.108/v6.1.107

