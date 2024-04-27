Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60BB317D2
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714231543; cv=none; b=m6a4pB0HvG9RpGteUcs9mAbRVzR80c5qhP5X1QnwYOMd6woonhKdBEcG6QhphiqjnZH0R5jp52HjAAW4y/ZW/fFV0vrpyD650bwxr/5sXFIvoU4TiXzPxHQAOBkI98yNyQaRgEpkqVbwVfCpQKGA8hGO5bRmMm3i5ft76HYd1J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714231543; c=relaxed/simple;
	bh=ikBGEhjohcK3imrzMmoUhIgvlu39vm/mHE5Im6MPlfg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VYr6oVk/dPp5wIL1ceyMFmiTOQTO/JzAhBvrDwu3XkAVzC/v4q7zQ+gCZGcYq6qlxWm+E43WoNbehG1kPqeKr1E3jMkg4MNy8HiJGj+5M2viGh7G/TSQLiwdWP+NZnWMbaQJN8mTwwDOzi5vebC6fawBi9gz4QYip+TXN9YExc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1714231543;
	bh=ikBGEhjohcK3imrzMmoUhIgvlu39vm/mHE5Im6MPlfg=;
	h=Subject:From:To:Date:From;
	b=UtulGzL6W3OewqDYJzgZhInUBAyBbOGg9fLH3RZ74mTZ7u+4p/23WdbXXKqkFtmus
	 l4og5GbhwZH4x7380ppBV/oQGcNJyqx6yRyvInQsYgv3UQMtsTeHaRUvU+j89n6KL9
	 idEJIRoAt3UCXokMd2MW9GXBx1k1tuC3sx2n002w=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 102DDC113CE
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:25:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EE3F2C54BA8
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Apr 2024 15:25:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.157 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Apr 2024 15:25:42 +0000
Message-Id: <20240427152542.release-5.15.157@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.157
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.157.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.157.xz

Linux kernel version 5.15.157 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.157.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.157.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.157.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.157/v5.15.156

