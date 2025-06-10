Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4198C22488E
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:45:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749555907; cv=none; b=MX9kBoq7UfA0ucxMrsxVqRWp0GKrBM3BByFwKDXbpAswUajOlegcTkQ2WfH8SbX725aUj0R7Uk+6ktabuXZcbgTT3KGueAi775RM+aqlm72JoVcKa3m1Bv8wgw7t7F9n6qOLvriUqmW9dpjhLJXg1yWtNWKX/UgPLtziAb1cMcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749555907; c=relaxed/simple;
	bh=uQjC1ZaDs+vQ5oeRNAoXTS43jHMblNVpIyqPakCOwME=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=A3j8xmgNP99sB9UOzwcQJ9EcjYwGf/GV66mHp76fY5XdNua6ycxdrbjvuQwcbPydwri2nphy9XKNnH7NN3VFoK0BAa3y3sAWqp1XFwCf6/382/9NYAgSc7nZm6ZwnwIOSNYJM6cxTdkKLY0v7A8QnfTIaAV5suG383zneCpJgzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1749555907;
	bh=uQjC1ZaDs+vQ5oeRNAoXTS43jHMblNVpIyqPakCOwME=;
	h=Subject:From:To:Date:From;
	b=IQBZ5+1YzW/TR93cwlETkQG1/4AwfWI/VdupJeUQdFA60+xDZtxq8vmVL7FDbNhVA
	 3kK7NqwodAJQXZjDWjtQEToQA8YP4XtHVFTCfAeQkR8QLFosrtgBb5wf6TzI4uogzo
	 DS2wxANqkFv9EL1rou3s9A6fGD0LMnq49f+D+I48=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE107C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:45:06 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7492338111D2
	for <linux-kernel-announce@vger.kernel.org>; Tue, 10 Jun 2025 11:45:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.15.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 10 Jun 2025 11:45:36 +0000
Message-Id: <20250610114536.release-6.15.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.15.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.2.xz

Linux kernel version 6.15.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.15.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.15.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.15.2/v6.15.1

