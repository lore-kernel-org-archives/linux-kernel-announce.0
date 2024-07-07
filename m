Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EFB12E55
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Jul 2024 22:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720391319; cv=none; b=irIwEuDHcg5dI1NXvwYn7QcpxsI0MiS6u/xxAvO5FEuX4PNek6uldyONi2LR+0eHCdXjDdCw33WNYEe8/jUqm8zKaPnpNoxAmHAtHfvzRovglbcAw/gcrF89q91I3Nb7UDsEp5AEwT8z1jd20T2HSH8EMydj8nbiMMRQ/sDNYh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720391319; c=relaxed/simple;
	bh=eHAaOlN2Tyt6zXfAKyBgrvhGlAIyJcTIVtM6qiMY7s8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=tKL30jjnqY4vSEaqI+LC9mGyyln16QtU1z1EvqsfBPyzz+Eydu/96Ai7zg76bIySL4GqBnwR8SV1xl7CgM4p3muBO9MfTRj0C39BmCI6kNUyXOXx82ROTuf4i+gtxN1rnBbuv0FbOLF/wouBbAxhyYVsW7q31nLo1c7olEqSqCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1720391319;
	bh=eHAaOlN2Tyt6zXfAKyBgrvhGlAIyJcTIVtM6qiMY7s8=;
	h=Subject:From:To:Date:From;
	b=GHVRwQFm0/pqacp65hena6GWmSP8G1kg829O9PM2rFrKVfavz2Oyi5ICsDx2artiR
	 bE8o5XTSzh5EuxIkOJ0QYFah06AeCumHcsWzW35ppn4ou+iaYH6ubRKvvHpTdpsyEr
	 3LbAK4Y4nEymG5SfNUaqyMgNcJ595Vowi9DD5LYI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id D181FC3277B
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Jul 2024 22:28:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id BEB61C433E9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Jul 2024 22:28:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 07 Jul 2024 22:28:38 +0000
Message-Id: <20240707222838.release-6.10-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.10-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.10-rc7/v6.9

Linux kernel version 6.10-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.10-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.10-rc7/v6.9

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.10-rc7/v6.10-rc6

